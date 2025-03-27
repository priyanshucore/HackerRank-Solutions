/*
MySQL
*/

SELECT CI.NAME
FROM CITY CI
JOIN COUNTRY CO
ON CI.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT = 'Africa';
