-- Write your PostgreSQL query statement below

-- Q1
select product_id from products
where low_fats = 'Y' and recyclable = 'Y'

--Q2
select name from Customer
where referee_id != 2 or referee_id is null;


--Q3
select name, population, area from World 
where area >= 3000000 or population >= 25000000

--Q4
select distinct author_id as id from Views
where author_id = viewer_id

--Q5
select tweet_id from Tweets
where length(Content) > 15