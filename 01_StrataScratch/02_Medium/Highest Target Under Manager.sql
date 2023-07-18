/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9905-highest-target-under-manager?code_type=5
Interview question title:               Highest Target Under Manager
*/

-- Decided to put this in a CTE for readability
WITH target as (
    SELECT MAX(target)          AS target
    FROM salesforce_employees
    WHERE manager_id = 13
)

SELECT
        first_name
    ,   target
FROM salesforce_employees
WHERE
        target = (
            SELECT * 
            FROM target
        )
    AND manager_id = 13;