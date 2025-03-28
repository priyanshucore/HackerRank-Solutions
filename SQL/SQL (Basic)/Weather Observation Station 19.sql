/*
MySQL
*/

WITH euclidean_distance_points AS
    (
    SELECT
        MIN(LAT_N) AS a,
        MAX(LAT_N) AS b,
        MIN(LONG_W) AS c,
        MAX(LONG_W) AS d
    FROM STATION
    )
SELECT ROUND(SQRT(POW((a - b), 2) + POW((c - d), 2)), 4)
FROM euclidean_distance_points;
