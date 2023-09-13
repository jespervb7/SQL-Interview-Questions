/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9891-customer-details?code_type=5
Interview question title:               Customer Details
*/

SELECT
        first_name
    ,   last_name
    ,   city
    ,   order_details
FROM customers cust
LEFT JOIN orders ord
ON cust.id = ord.cust_id
ORDER BY first_name, order_details