/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=5
Interview question title:               Find the most profitable company in the financial sector of the entire world along with its continent
*/

-- Specifically used sector and rank for edge cases. If you preview the table, filtering on just rank 1 was fine.

SELECT 
        company
    ,   continent
FROM forbes_global_2010_2014
WHERE 
        sector = 'Financials'
    AND rank = 1