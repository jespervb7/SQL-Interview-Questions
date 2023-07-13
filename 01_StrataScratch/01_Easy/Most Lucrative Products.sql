/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/2119-most-lucrative-products?code_type=5
Interview question title:               Most Lucrative Products
*/ 

WITH product_revenue AS (
    SELECT
            product_id
        ,   sum(units_sold*cost_in_dollars) AS revenue
    FROM online_orders
    GROUP BY product_id
)

SELECT TOP (5)
        *
FROM product_revenue
ORDER BY revenue DESC