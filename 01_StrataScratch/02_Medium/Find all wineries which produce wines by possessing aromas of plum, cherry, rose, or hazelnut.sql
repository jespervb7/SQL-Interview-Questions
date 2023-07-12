/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/10026-find-all-wineries-which-produce-wines-by-possessing-aromas-of-plum-cherry-rose-or-hazelnut?code_type=5
Interview question title:               Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut
*/ 

SELECT winery
FROM winemag_p1
WHERE 
        description LIKE "%plum%" 
    OR  description LIKE "%cherry%" 
    OR  description LIKE "%rose%" 
    OR  description LIKE "%hazelnut%"
GROUP BY winery
ORDER BY winery;