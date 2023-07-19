/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=5
Interview question title:               Admin Department Employees Beginning in April or Later
*/

SELECT
        COUNT(*) AS n_admins
FROM worker
WHERE
        department = 'Admin'
    AND MONTH(joining_date) >= 4