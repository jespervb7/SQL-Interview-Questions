-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT 
    city
FROM station
WHERE
    city LIKE "%a" OR
    city LIKE "%e" OR
    city LIKE "%i" OR
    city LIKE "%o" OR
    city LIKE "%u"
GROUP BY city;