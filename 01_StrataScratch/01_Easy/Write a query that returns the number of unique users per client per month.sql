/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=5
Interview question title:               Write a query that returns the number of unique users per client per month
*/ 

SELECT
        client_id
    ,   MONTH(time_id)              AS month
    ,   COUNT(DISTINCT user_id)     AS users_num
FROM fact_events
GROUP BY client_id, MONTH(time_id)