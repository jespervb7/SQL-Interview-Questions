/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9847-find-the-number-of-workers-by-department?code_type=5
Interview question title:               Number of Workers by Department Starting in April or Later
*/

SELECT
        department
    ,   COUNT(*)    AS num_workers
FROM worker
WHERE joining_date >= '2014-04-01'
GROUP BY department
ORDER BY COUNT(*) DESC