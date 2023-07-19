/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9688-churro-activity-date?code_type=5
Interview question title:               Churro Activity Date
*/

SELECT
        activity_date
    ,   pe_description
FROM los_angeles_restaurant_health_inspections
WHERE
        facility_name = 'STREET CHURROS'
    AND score < 95