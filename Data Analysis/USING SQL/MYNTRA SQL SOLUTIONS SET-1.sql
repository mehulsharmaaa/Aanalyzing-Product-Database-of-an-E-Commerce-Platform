-- SORTING:

Use Myntra;

# 1. Finding the most expensive product on myntra
select * from product_data order by marked_price desc limit 1;

# 2. Finding the least expensive product on myntra
select * from product_data order by marked_price limit 1;

# 3. Finding the top 5 most expensive product on myntra
select * from product_data order by marked_price desc limit 5;

# 4. Top 5 products based on best rating | rating*rating count
select * from product_data order by rating, rating*rating_count desc limit 5;

# 5. Finding the second most expensive product
select * from product_data order by marked_price desc limit 1,1;

# 6. Finding the second least expensive product
select * from product_data order by marked_price asc limit 1,1;

# 7. Finding the 10th most expensive product
select * from product_data order by marked_price desc limit 9,1;

# 8. Finding the worst rated product by nike
select * from product_data where brand_name = "nike" order by rating limit 1 ;

# 9. Finding the worst rated product by nike & rating is not zero
 select * from product_data where brand_name = "nike" and rating > 0 order by rating limit 1 ;
 
 # 10. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
 select * from product_data where brand_name = "nike" or brand_name = 'adidas' order by round(rating*rating_count) limit 10;
 
 # 11. Worst rated 10 products based on the rating of 100 people atleast
 select * from product_data  where rating_count >= 100 order by round(rating*rating_count) limit 10 ;
 
 # 12. 10 worst rated tshirt based on the rating of 100 people atleast
 select * from product_data  where product_tag = 'tshirts' and rating_count >= 100 order by round(rating*rating_count) limit 10 ;
 
 # 13. Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
 select * from product_data  order by product_name desc limit 10;
 
 # 14. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
 select * from product_data  where brand_name = 'nike' or brand_name = 'adidas' order by round(rating*rating_count) limit 10 ;
 
 # 15. Finding the list of tshirts from nike and adidas prices between 1000 and 1200 | Sort them based on ascending order of brand_name & price
 select * from product_data where brand_name= "nike" or brand_name = "adidas" and discounted_price between 1000 and 1200 and product_tag = 'tshirts' order by 
 brand_name and discounted_price asc;