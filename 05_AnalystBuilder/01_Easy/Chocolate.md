# [Chocolate](https://www.analystbuilder.com/questions/chocolate-vPiUY)

## Quick statistics

|Statistic              |Value      |
|--                     |--         |
| Date started          |19-05-2024           |
| Date completed        | 19-05-2024 |
| Time taken (seconds)  | 78|

## The question

I love chocolate and only want delicious baked goods that have chocolate in them!

Write a Query to return bakery items that contain the word "Chocolate".

### Example data

| Field           | Data Type  |
|---------------- |----------- |
| product_name     | text       |

### Example output

| Employee_id  |
|------------- |
| name 1            |
| name 2           |
| name 3            |

## Solution

Below you will find my approach to solving this particular problem. It's a very simple problem and tests a candidate on their basic SQL syntax knowledge.

### Comments

### Code

```SQL
SELECT
    product_name
FROM
    bakery_items
WHERE
    product_name LIKE '%Chocolate%';
```
