--Q1
select * from Cinema
where id%2 != 0 and description != 'boring'
order by rating desc;

--1251 Average Selling Price
SELECT 
    p.product_id, 
    COALESCE(ROUND(SUM(p.price * u.units) * 1.0 / SUM(u.units) * 1.0, 2), 0) as average_price
FROM Prices p LEFT JOIN UnitsSold u 
ON 
    p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id   


--Q3
SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p 
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id