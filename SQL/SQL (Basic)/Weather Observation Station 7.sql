/*
MySQL
*/

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY REGEXP '[AEIOUaeiou]$';
