# [Cake vs Pie](https://analystbuilder.com/questions/cake-vs-pie-rSDbF)

## Quick statistics

|Statistic              |Value      |
|--                     |--         |
| Date started          |20-05-2024      |
| Date completed        |20-05-2025     |
| Time taken (seconds)  |1627  |

## The question

Marcie's Bakery is having a contest at her store. Whichever dessert sells more each day will be on discount tomorrow. She needs to identify which dessert is selling more.

Write a query to report the difference between the number of Cakes and Pies sold each day.

Output should include the date sold, the difference between cakes and pies, and which one sold more (cake or pie). The difference should be a positive number.

Return the result table ordered by Date_Sold.

### Example data

| Field           | Data Type  |
|---------------- |----------- |
| date_sold       | date       |
| product         | text       |
| amount_sold     | int        |

### Example output

| date_sold       | difference   | sold_more |
|---------------- |-----------   | ------------|
| 2022-06-01      | 12           |Pie          |
| 2022-06-02      | 1            |Cake         |
| 2022-06-03      | 2            |Pie          |

## Solution

Below you will find my approach to solving this particular problem

### Comments

I found this question quite hard and it quickly laid out my uncomfortableness with window functions. I am fine with googling them, but not so great at them when it comes to an enviroment where I can't google.
I had to utilize a self join (join the table on itself) to get the same result a normal window function would give me! It's not necessarily wrong, but it's not the most optimized way of doing something.

### Code

#### First attempt

I quickly realized the solution below wouldn't work exactly as it should. I also realized I probably needed to use a function such a LAG().
Unfortunately I didn't know the syntax on top of my head so I decided to a 'ugly' fix. Which atleast got me the right answer.
Normally one would google for the answer, but I want to simulate a real SQL interview enviroment, which means I won't have the ability to google solutions.

```SQL
-- First find the difference
WITH difference_calc AS (

  SELECT
      t1.date_sold
    , t1.product
    , (t1.amount_sold - t2.amount_sold) AS difference
  FROM
      desserts t1
  LEFT JOIN
      desserts t2
  ON t1.date_sold = t2.date_sold
  WHERE
      t1.product <> t2.product
  
)

SELECT
    date_sold
  , difference
  , product     AS sold_more
FROM
    difference_calc
WHERE difference >= 0
```

#### Second attempt

This was a quick/ugly fix. I realized after a bit of debugging that doing a.column - b.column doesn't work properly if it has null values. To counter this issue I used COALESCE.
From there I created a somewhat clean version of my code. The problem with a self-join is that it's unintuative what you are doing. It's much better to use a window function.

```SQL
-- First find the difference
WITH fix_missing_values AS (

  SELECT
      t1.date_sold
    , t1.product
    , COALESCE(t1.amount_sold, 0) AS first_amount
    , COALESCE(t2.amount_sold, 0) AS second_amount 

  FROM
      desserts t1
  LEFT JOIN
      desserts t2
  ON t1.date_sold = t2.date_sold
  WHERE
      t1.product <> t2.product
  
)

SELECT
    date_sold
   , (first_amount - second_amount) AS difference
   , product                        AS sold_more
FROM
    fix_missing_values
WHERE
    (first_amount - second_amount) > 0

```
