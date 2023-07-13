/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/10061-popularity-of-hack/solutions?code_type=5
Interview question title:               Popularity of Hack
*/ 

-- We want the average popularity of hack by location

SELECT
        emp.location
    ,   AVG(CAST(surv.popularity AS FLOAT))
FROM facebook_employees emp
LEFT JOIN facebook_hack_survey surv
ON emp.id = surv.employee_id
GROUP BY emp.location