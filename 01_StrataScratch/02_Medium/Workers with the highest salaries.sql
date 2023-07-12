/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=5
Interview question title:               Workers with the highest salaries
*/ 

SELECT 
        worker_title
FROM title              a
LEFT JOIN worker        
ON a.worker_ref_id = b.worker_id
WHERE b.salary = 
    (
        SELECT MAX(salary) 
        FROM worker
    );