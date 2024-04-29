# [Heart Attack Risk](https://www.analystbuilder.com/questions/heart-attack-risk-FKfdn)

## Quick statistics
|Statistic              |Value      |
|--                     |--         |
| Date started          | 30-04-2024          |
| Date completed        | 30-04-2024          |
| Time taken (seconds)  | 286         |

## The question

Dr. Obrien has seen an uptick in heart attacks for his patients over the past few months. He has been noticing some trends across his patients and wants to get ahead of things by reaching out to current patients who are at a high risk of a heart attack.

We need to identify which clients he needs to reach out to and provide that information to Dr. Obrien.

If a patient is over the age of 50, cholesterol level of 240 or over, and weight 200 or greater, then they are at high risk of having a heart attack.

Write a query to retrieve these patients. Include all columns in your output.

As Cholesterol level is the largest indicator, order the output by Cholesterol from Highest to Lowest so he can reach out to them first.

### Example data

| Field       | Data Type |
|-------------|-----------|
| patient_id  | int       |
| age         | int       |
| cholesterol | int       |
| weight      | int       |


### Example output

| patient_id | age | cholesterol | weight |
|------------|-----|-------------|--------|
| 1001       | 52  | 373         | 267    |
| 1002       | 77  | 324         | 211    |


## Solution

Below you will find my approach to solving this particular problem

### Comments

We need to find a list of clients who fulfill the following conditions
- Over the age of 50 (>)
- Have a cholesterol level of 240 or higher (>=)
- Who weigh 200 or higher (>=)

We then are told to output all the columns and order those descending (highest to lowest) by cholesterol. Which results in the query below

### Code

```SQL
-- Find clients who have an increased risk of an heart attack, below are the following requirements:
-- Clients older than 50 (>)
-- Have a Cholesterol level of 240 or higher (>=)
-- Who weigh 200 or higher (>=)

-- We need to include all the columns
-- Order by Cholesterol from highest to lowest (descending)

SELECT 
        *
FROM
        patients
WHERE
        age > 50
    AND cholesterol >= 240
    AND weight >= 200
ORDER BY
        cholesterol DESC
```