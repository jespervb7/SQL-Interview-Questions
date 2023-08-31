/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9881-make-a-report-showing-the-number-of-survivors-and-non-survivors-by-passenger-class?code_type=5
Interview question title:               Make a report showing the number of survivors and non-survivors by passenger class
*/

SELECT
        survived
    ,   SUM(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class
    ,   SUM(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class
    ,   SUM(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived