/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type?code_type=5
Interview question title:               Find the rate of processed tickets for each type
*/

SELECT
        type
    ,   CAST(
            SUM(
                    CASE
                        WHEN processed in ('true')
                        THEN 1 else 0
                    END
                ) as float
            ) 
            /count(type)
FROM facebook_complaints
GROUP BY type