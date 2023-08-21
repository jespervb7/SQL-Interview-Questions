/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=5
Interview question title:               Number of Shipments Per Month
*/

SELECT
        SUBSTRING(shipment_date,1,7) AS year_month
    ,   COUNT(*)
FROM amazon_shipment
GROUP BY SUBSTRING(shipment_date,1,7)