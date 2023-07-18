/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9917-average-salaries?code_type=5
Interview question title:               Average Salaries
*/

WITH average_salary AS (
    SELECT 
        department
    ,   AVG(CAST(salary AS FLOAT))      AS avg
    FROM employee
    GROUP BY department
)

SELECT
        emp.department
    ,   emp.first_name
    ,   emp.salary
    ,   sal.avg
FROM employee emp
LEFT JOIN average_salary sal
ON emp.department = sal.department