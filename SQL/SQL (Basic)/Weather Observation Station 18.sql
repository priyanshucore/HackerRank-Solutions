/*
MySQL
*/

WITH manhattan_distance_points AS
    (
    SELECT
        MIN(LAT_N) AS a,
        MIN(LONG_W) AS b,
        MAX(LAT_N) AS c,
        MAX(LONG_W) AS d
    FROM STATION
    )
SELECT ROUND(ABS((a - c) + (b - d)), 4)
FROM manhattan_distance_points;
