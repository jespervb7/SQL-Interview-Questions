# [On The Way Out](https://www.analystbuilder.com/questions/on-the-way-out-LGNoQ)

## Quick statistics

|Statistic              |Value      |
|--                     |--         |
| Date started          |09-05-2024           |
| Date completed        | 09-05-2024          |
| Time taken (seconds)  | 108          |

## The question

Herschel's Manufacturing Plant has hit some hard times with the economy and unfortunately they need to let some people go.

They figure the younger employees need their jobs more as they are growing families so they decide to let go of their 3 oldest employees. They have more experience and will be able to land on their feet easier (and they had to pay them more).

Write a query to identify the ids of the three oldest employees.

Order output from oldest to youngest.

### Example data

| Field           | Data Type  |
|---------------- |----------- |
| employee_id     | int        |
| birth_date      | date       |

### Example output

| Employee_id  |
|------------- |
| 4            |
| 11           |
| 7            |

## Solution

Below you will find my approach to solving this particular problem

### Comments

Relatively easy question, could be done different with a rank/dense rank window function. As there was no specifics regarding duplicates values I decided to omit it for a quick answer

### Code

```SQL
SELECT TOP 3
      employee_id
FROM
  employees
ORDER BY
  birth_date;
```
