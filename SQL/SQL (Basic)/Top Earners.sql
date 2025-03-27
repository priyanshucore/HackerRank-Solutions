/*
MySQL
*/

SELECT 
    MAX(total_earnings), 
    COUNT(*)
FROM(
    SELECT salary * months AS total_earnings
    FROM Employee
    ) AS subquery
WHERE total_earnings = (SELECT MAX(salary * months) FROM Employee);
