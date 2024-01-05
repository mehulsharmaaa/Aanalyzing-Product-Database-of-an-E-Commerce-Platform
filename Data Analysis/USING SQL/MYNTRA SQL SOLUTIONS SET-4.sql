USE myntra;

# List the name of most sold product
SELECT product_tag, sum(rating_count) FROM product_data
GROUP BY  product_tag
ORDER BY sum(rating_count) desc; 

# List the name of most sold brand
SELECT brand_tag, sum(rating_count) FROM product_data
GROUP BY  brand_tag
ORDER BY sum(rating_count) desc; 

# Best-selling tshirt of the year
SELECT brand_name, product_name, product_link, rating_count, discounted_price FROM product_data WHERE product_tag = "tshirts"
ORDER BY rating_count desc limit 1; 

# Best-selling sunglasses of the year
SELECT brand_name, product_name, product_link, rating_count, discounted_price FROM product_data WHERE product_tag = "sunglasses"
ORDER BY rating_count desc limit 1; 

#Finding the top 5 most expensive brands with average rating more than 4.5
SELECT brand_tag, round(avg(discounted_price)), round(avg(rating)) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5
ORDER BY round(avg(discounted_price)) desc limit 5;

#Finding the top 5 most expensive brands with average rating more than 4.5 and price less than 5000
SELECT brand_tag, (avg(discounted_price)), round(avg(rating)) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND round(avg(discounted_price)) < 5000
ORDER BY (avg(discounted_price)) desc limit 5;

#Finding the top 5 most expensive brands with average rating more than 4.5 and price less than 5000
SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND (avg(discounted_price)) < 5000
ORDER BY (avg(discounted_price)) desc limit 5;

#Finding the top 5 most sold brands in price range 0 - 1000
SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND (avg(discounted_price)) BETWEEN 0 AND 1000
ORDER BY (sum(rating_count)) desc limit 5;

#Finding the top 5 most sold brands in price range 1000 - 2500
SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING (avg(discounted_price)) BETWEEN 1000 AND 2500
ORDER BY (sum(rating_count)) desc limit 5;

#Finding the top 5 most sold brands in price range 2500 - 5000
SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND (avg(discounted_price)) BETWEEN 2500 AND 5000
ORDER BY (sum(rating_count)) desc limit 5;

#Finding the top 5 most sold brands in price range 5000 - 10000
SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING (avg(discounted_price)) BETWEEN 5000 AND 10000
ORDER BY (sum(rating_count)) desc limit 5;

#Finding the top 5 most sold brands in price more than 10000
SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING (avg(discounted_price)) > 10000
ORDER BY (sum(rating_count)) desc limit 5;

# Top 5 Brands with highest revenue
SELECT brand_tag, sum(discounted_price * rating_count) from product_data
GROUP BY brand_tag
ORDER BY sum(discounted_price * rating_count) desc limit 5;

# List the name of brands which has generated more than 100 million in revenue
SELECT brand_tag, sum(discounted_price * rating_count) from product_data
GROUP BY brand_tag
HAVING sum(discounted_price * rating_count) > 100000000
ORDER BY sum(discounted_price * rating_count) desc;

# List the name of products which has generated more than 100 million in revenue
SELECT product_tag, sum(discounted_price * rating_count), avg(rating) from product_data
GROUP BY product_tag
HAVING sum(discounted_price * rating_count) > 100000000
ORDER BY sum(discounted_price * rating_count) desc;












