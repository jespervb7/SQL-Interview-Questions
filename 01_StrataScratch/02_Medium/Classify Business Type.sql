/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9726-classify-business-type?code_type=5
Interview question title:               Classify Business Type
*/

SELECT DISTINCT
        business_name
    ,   CASE
            WHEN business_name LIKE '%restaurant%'
            THEN 'restaurant'
            WHEN 
                    business_name LIKE '%cafe%' 
                OR  business_name LIKE '%café%'
                OR  business_name LIKE '%coffee%'
            THEN 'cafe'
            WHEN business_name LIKE '%school%'
            THEN 'school'
            ELSE 'other'
        END AS business_type
FROM sf_restaurant_health_violations