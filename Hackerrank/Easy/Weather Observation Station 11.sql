-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT DISTINCT 
    CITY 
FROM STATION 
WHERE 
        RIGHT(CITY, 1) NOT IN ('a','e','i','o','u') 
    OR LEFT(CITY, 1) NOT IN ('a','e','i','o','u');