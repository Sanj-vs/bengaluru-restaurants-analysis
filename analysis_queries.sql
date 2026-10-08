-- Bengaluru restaurants analysis (SQL Server)

-- Check: total rows
SELECT COUNT(*) FROM ZOMATO;

-- Q1: Areas with a rating of 0 (probably "no rating yet")
SELECT CITYNAME, SUMSCOUNT, AVGRATING
FROM ZOMATO
WHERE AVGRATING = 0;

-- Q2: Top 5 areas by restaurant count
SELECT TOP 5 CITYNAME, SUMSCOUNT, ROUND(AVGRATING, 1) AS rating
FROM ZOMATO
ORDER BY SUMSCOUNT DESC;

-- Q3: Big areas (over 1000), group size check
SELECT COUNT(*) FROM ZOMATO WHERE SUMSCOUNT > 1000;

-- Q4: Middle areas rating range
SELECT ROUND(MIN(AVGRATING), 1) AS lowest_rating,
       ROUND(MAX(AVGRATING), 1) AS highest_rating
FROM ZOMATO
WHERE SUMSCOUNT BETWEEN 100 AND 1000;

-- Q5: Priority list - small areas with low ratings
SELECT CITYNAME, SUMSCOUNT, ROUND(AVGRATING, 1) AS rating
FROM ZOMATO
WHERE SUMSCOUNT < 100 AND AVGRATING > 0 AND AVGRATING < 3.5
ORDER BY AVGRATING ASC;