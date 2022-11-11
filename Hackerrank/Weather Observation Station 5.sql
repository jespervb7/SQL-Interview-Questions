WITH data AS 
    (
        SELECT *, LENGTH(city) AS length
        FROM station
        ORDER BY city
    ),
    max_length AS
    (
        SELECT city, length
        FROM data
        ORDER BY 2 DESC, 1
        LIMIT 1
    ),
    min_length AS
    (
        SELECT city, length
        FROM data ORDER BY 2, 1 
        LIMIT 1
    )
SELECT *
FROM max_length
UNION
SELECT * 
FROM min_length;
