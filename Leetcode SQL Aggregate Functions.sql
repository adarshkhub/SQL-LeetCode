--Q1
select * from Cinema
where id%2 != 0 and description != 'boring'
order by rating desc;

--Q2


--Q3
SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p 
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id