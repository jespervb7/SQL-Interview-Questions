# [Media Addicts](https://www.analystbuilder.com/questions/media-addicts-deISZ)

## Quick statistics

|Statistic              |Value      |
|--                     |--         |
| Date started          |02-05-2024          |
| Date completed        |02-05-2024        |
| Time taken (seconds)  |277          |

## The question

Social Media Addiction can be a crippling disease affecting millions every year.

We need to identify people who may fall into that category.

Write a query to find the people who spent a higher than average amount of time on social media.

Provide just their first names alphabetically so we can reach out to them individually.

### Example data

#### Table user_time

| Field               | Data Type  |
|-------------------- |----------- |
| user_id             | int        |
| media_time_minutes  | int        |

#### Table users

| Field               | Data Type  |
|-------------------- |----------- |
| user_id             | int        |
| first_name          | text       |

### Example output

|first_name             |
|-------------------- |
|Adam          |
|Bella          |
|Chris          |

## Solution

Below you will find my approach to solving this particular problem

### Comments

We first have to find the average social media time. I decided to do it in a CTE for readability.
Then we have to find the social media time per person. I used the first_name now, but ideally you would do this in a CTE too and by ID instead
From there it's a simple group by and filter out the people with less than average social media time using the having clause.

### Code

```SQL
-- first find the average amount of time on social media
-- group their time in the next query.
-- then filter out the people who are below the average time
-- List out their names

WITH avg_social_media_time AS (
  SELECT AVG(media_time_minutes)  AS avg_social_media_time
  FROM user_time
)

SELECT users.first_name
FROM users
LEFT JOIN user_time us_ti
ON users.user_id = us_ti.user_id
GROUP BY users.first_name
HAVING SUM(us_ti.media_time_minutes) > (SELECT avg_social_media_time FROM avg_social_media_time)
```
