-- link: https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=5

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