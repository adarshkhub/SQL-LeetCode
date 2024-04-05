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

SELECT
w1.id
FROM
Weather w1
JOIN
Weather w2 ON w2.recordDate = w1.recordDate - interval '1 day'
WHERE
w1.temperature > w2.temperature;


-- Employee Bonus
-- Write your PostgreSQL query statement below
select name, bonus
from Employee
Left Join Bonus on Bonus.empId = Employee.empId
where bonus < 1000 or bonus IS NULL


-- Students and Examinations
-- Write your PostgreSQL query statement below

-- 1 step is to join

-- 1 step is to groupby and count the subject names per student_id

select student_id, count(subject_name) as attended_exams




group by student_id
order by student_id Desc, subject_name