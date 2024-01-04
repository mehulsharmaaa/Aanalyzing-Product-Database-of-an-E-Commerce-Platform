-- GROUP BY:

Use Myntra;

#1. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag, count(product_name) from product_data
group by brand_tag
order by count(product_name) desc limit 5;

#2 Finding the top 5 brand who sold the most number of products
select brand_tag, sum(rating_count) from product_data
group by brand_tag
order by  sum(rating_count) desc limit 5;

select brand_tag, max(discounted_price) from product_data
group by brand_tag
order by max(discounted_price) desc limit 5;

#3. Finding the top 5 most expensive brands based on their discounted price
select brand_tag, min(discounted_price) from product_data
group by brand_tag
order by min(discounted_price) asc limit 5;

#4. Finding the top 5 least expensive brands based on their discounted price
select product_tag, sum(rating_count) from product_data
group by product_tag
order by sum(rating_count) desc limit 10;

#5. Finding the top 10 best-selling product categories:
select brand_tag, round(avg(discount_percent)) from product_data
group by brand_tag
order by round(avg(discount_percent)) desc limit 10;

#6.  Finding the top 10 brands who gives maximum discount:
select product_tag, avg(discounted_price) from product_data
group by product_tag
order by avg(discounted_price) desc limit 5;

#7. Finding the top 5 most expensive product categories
select product_tag, round(avg(discounted_price)) from product_data
group by product_tag
order by round(avg(discounted_price) desc limit 5;