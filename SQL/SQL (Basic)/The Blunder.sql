/*
MySQL
*/

SELECT CEIL(ABS(
    (AVG(Salary)) - 
    (AVG(CAST(REPLACE(CAST(Salary AS CHAR), '0', '') AS UNSIGNED)))
)) AS error_amount
FROM EMPLOYEES;
