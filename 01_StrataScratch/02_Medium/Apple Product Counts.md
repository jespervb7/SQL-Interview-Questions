# [Apple Product Counts](https://platform.stratascratch.com/coding/10141-apple-product-counts?code_type=5)

## Quick statistics

|Statistic              |Value      |
|--                     |--         |
| Date started          | 24-06-2024          |
| Date completed        | 24-06-2024|
| Time taken (seconds)  |958          |

## The question

Find the number of Apple product users and the number of total users with a device and group the counts by language. Assume Apple products are only MacBook-Pro, iPhone 5s, and iPad-air. Output the language along with the total number of Apple users and users with any device. Order your results based on the number of total users in descending order.

### Example data

#### Table playbook_events

| Field        | Data Type  |
|------------- |----------- |
| user_id      | int        |
| occurred_at  | datetime   |
| event_type   | varchar    |
| event_name   | varchar    |
| location     | varchar    |
| device       | varchar    |

#### Table playbook_users

| Field         | Data Type  |
|-------------- |----------- |
| user_id       | int        |
| created_at    | datetime   |
| company_id    | int        |
| language      | varchar    |
| activated_at  | datetime   |
| state         | varchar    |

### Example output

| language  | n_apple_users  | n_total_users  |
|---------- |--------------- |--------------- |
| english   | 11             | 45             |
| spanish   | 3              | 9              |
| japanese  | 2              | 6              |

## Solution

Below you will find my approach to solving this particular problem

### Comments

A bunch of the time on this query was spent figuring out that capitalized versions of **'Macbook-Pro'** aren't the same as in the data.
The question itself is misleading, but it does tests and show a candidates skill of debugging.

### Code

```SQL
SELECT
        plu.language
    ,   COUNT(DISTINCT
            CASE
                WHEN ple.device IN ('macbook pro', 'iphone 5s', 'ipad air')
                THEN plu.user_id
                ELSE NULL
            END
        )                                   AS n_apple_users
    ,   COUNT(DISTINCT plu.user_id)         AS n_total_users
FROM playbook_users plu
INNER JOIN playbook_events ple
ON plu.user_id = ple.user_id
GROUP BY plu.language
ORDER BY 3 DESC
```
