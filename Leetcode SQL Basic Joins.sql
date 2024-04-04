-- Replace Employee ID with the Unique Identifier
select unique_id, name
from Employees
Left Join EmployeeUNI on Employees.id = EmployeeUNI.id
-- Product Sales Analysis 1
select product_name, year, price
from Sales
Inner Join Product on Product.product_id = Sales.product_id
-- Customers who visited but did not make any transactions
select customer_id, count(customer_id) as count_no_trans
from Visits
Left Join Transactions on Visits.visit_id = Transactions.visit_id
where transaction_id IS NULL 
GROUP BY Customer_ID
--Rising Temperature
-- Self Join table 1 and table 2, and then compare row values and return the one with highertemperature
--pseudocode
SELECT 
w2.id
FROM 
    Weather w1
JOIN 
    Weather w2
ON 
    DATEDIFF(day,w1.recordDate, w2.recordDate) = 1
WHERE 
    w2.temperature > w1.temperature;