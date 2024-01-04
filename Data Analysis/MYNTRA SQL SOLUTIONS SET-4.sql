USE myntra;
SELECT product_tag, sum(rating_count) FROM product_data
GROUP BY  product_tag
ORDER BY sum(rating_count) desc; 

SELECT brand_tag, sum(rating_count) FROM product_data
GROUP BY  brand_tag
ORDER BY sum(rating_count) desc; 

SELECT product_tag, brand_tag FROM product_data
GROUP BY  brand_tag,product_tag
ORDER BY sum(rating_count) desc; 

SELECT brand_name, product_name, product_link, rating_count, discounted_price FROM product_data
ORDER BY rating_count desc; 

SELECT brand_name, product_name, product_link, rating_count, discounted_price FROM product_data WHERE product_tag = "tshirts"
ORDER BY rating_count desc; 

SELECT brand_name, product_name, product_link, rating_count, discounted_price FROM product_data WHERE product_tag = "sunglasses"
ORDER BY rating_count desc; 

use myntra;

SELECT brand_tag, avg(discounted_price) FROM product_data
GROUP BY brand_tag
ORDER BY avg(discounted_price) desc;

SELECT brand_tag, round(avg(discounted_price)), round(avg(rating)) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5
ORDER BY round(avg(discounted_price)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), round(avg(rating)) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND round(avg(discounted_price)) < 5000
ORDER BY (avg(discounted_price)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND (avg(discounted_price)) < 5000
ORDER BY (sum(rating_count)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND (avg(discounted_price)) BETWEEN 0 AND 1000
ORDER BY (sum(rating_count)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING (avg(discounted_price)) BETWEEN 1000 AND 2500
ORDER BY (sum(rating_count)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING avg(rating) > 4.5 AND (avg(discounted_price)) BETWEEN 2500 AND 5000
ORDER BY (sum(rating_count)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING (avg(discounted_price)) BETWEEN 5000 AND 10000
ORDER BY (sum(rating_count)) desc limit 5;

SELECT brand_tag, (avg(discounted_price)), (sum(rating_count)), avg(rating) FROM product_data
GROUP BY brand_tag
HAVING (avg(discounted_price)) > 10000
ORDER BY (sum(rating_count)) desc limit 5;

SELECT brand_tag, sum(discounted_price * rating_count) from product_data
GROUP BY brand_tag
ORDER BY sum(discounted_price * rating_count) desc limit 5;

SELECT brand_tag, sum(discounted_price * rating_count) from product_data
GROUP BY brand_tag
HAVING sum(discounted_price * rating_count) > 100000000
ORDER BY sum(discounted_price * rating_count) desc;

SELECT product_tag, sum(discounted_price * rating_count), avg(rating) from product_data
GROUP BY product_tag
HAVING sum(discounted_price * rating_count) > 100000000
ORDER BY sum(discounted_price * rating_count) desc;

select product_tag, rating_count from product_data
group by product_tag
order by rating_count desc limit 1;










