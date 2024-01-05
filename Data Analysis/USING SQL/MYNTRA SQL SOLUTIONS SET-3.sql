USE Myntra;

# 1. Brand Report Card
SELECT brand_tag as "BRAND", rating as "RATING", product_name as "NAME", product_tag as "PRODUCT", rating_count as "TOTAL RATINGS" FROM product_data
group by brand_tag, brand_name, rating, product_name, product_tag, rating_count
order by rating_count desc;

# 2. Which product_category of any brand is sold the most?
SELECT product_tag, rating_count FROM product_data
group by product_tag, rating_count
order by rating_count desc;

# 3. List top 5 brands which has sold most number of tshirts?
SELECT brand_tag, sum(rating_count), product_tag FROM product_data WHERE product_tag = "tshirts"
GROUP BY brand_tag, product_tag 
ORDER BY sum(rating_count) desc limit 5;

# 4. List top 5 brands which has sold most number of shirts:
SELECT brand_tag, sum(rating_count), product_tag FROM product_data WHERE product_tag = "shirts"   
GROUP BY brand_tag, product_tag
ORDER BY sum(rating_count) desc limit 5;

# 5. List top 5 brands which has sold most number of jeans:
SELECT brand_tag, sum(rating_count), product_tag FROM product_data WHERE product_tag = "jeans"   
GROUP BY brand_tag, product_tag
ORDER BY sum(rating_count) desc limit 5;

# 6. List top 5 brands which has sold most number of dresses
SELECT brand_tag, sum(rating_count), product_tag FROM product_data WHERE product_tag = "dresses"   
GROUP BY brand_tag, product_tag
ORDER BY sum(rating_count) desc limit 5;

# 7. Most popular product name listed in Myntra
SELECT product_name, count(rating_count) FROM product_data  
GROUP BY product_name
ORDER BY count(rating_count) desc;

# 8. Number of products sold for every rating (0 - 5)

SELECT product_name, rating FROM product_data  WHERE rating BETWEEN 0 AND 5
GROUP BY product_name, rating;

# 9. Number of products sold for every rating by bike

SELECT product_name, rating FROM product_data 
GROUP BY product_name, rating                   -- ORDER BY NAHI LAG RAHA
ORDER BY rating desc;

# 10. Number of products sold for every rating in tshirt category

SELECT product_name, rating FROM product_data  WHERE product_tag = "tshirts"
GROUP BY product_name, rating
ORDER BY rating desc;

-- Bonus : Relation between price of the thisrt and its rating with respect to people rated
SELECT product_tag, brand_tag, rating, rating_count, discounted_price from product_data WHERE product_tag = "tshirts" 
GROUP BY product_tag, brand_tag, rating, rating_count, discounted_price
ORDER BY rating, discounted_price desc;


