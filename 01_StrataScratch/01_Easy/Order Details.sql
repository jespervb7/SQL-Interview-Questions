/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9913-order-details?code_type=5
Interview question title:               Order Details
*/

SELECT
        cust.first_name
    ,   ord.order_date
    ,   ord.order_details
    ,   ord.total_order_cost
FROM customers cust
LEFT JOIN orders ord
ON cust.id = ord.cust_id
WHERE cust.first_name in ('Jill', 'Eva')
ORDER BY cust.id