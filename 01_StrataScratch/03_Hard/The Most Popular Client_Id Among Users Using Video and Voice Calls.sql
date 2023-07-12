/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/2029-the-most-popular-client_id-among-users-using-video-and-voice-calls?code_type=1
Interview question title:               The Most Popular Client_Id Among Users Using Video and Voice Calls
*/ 

-- Honestly, this question took me ages to complete lmao

WITH CTE1 AS (
    SELECT
            user_id
        ,   SUM(
                CASE 
                    WHEN event_type IN ( 'video call received', 'video call sent', 'voice call received', 'voice call sent') 
                    THEN 1 
                    ELSE 0 
                END
                )                                                                                                               AS count_want
        ,   COUNT(event_type)                                                                                                   AS count_total
    FROM fact_events
    GROUP BY user_id
),

CTE2 AS (
    SELECT 
            user_id
    FROM CTE1
    WHERE CAST(counter1 AS FLOAT) / counter2 >= 0.5
),
    
CTE3 AS (
    SELECT  
            q2.client_id
        ,   COUNT(q2.client_id)                                                                                                 AS counter3
    FROM CTE2 q1
    LEFT JOIN fact_events q2
    ON q1.user_id = q2.user_id
    GROUP BY client_id
)

SELECT TOP (1) client_id
FROM CTE3