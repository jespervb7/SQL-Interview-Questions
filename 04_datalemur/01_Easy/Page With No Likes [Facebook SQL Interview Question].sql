/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://datalemur.com/questions/sql-page-with-no-likes    
Interview question title:               Page With No Likes [Facebook SQL Interview Question]    
*/

SELECT
      pa.page_id
FROM pages pa
LEFT JOIN page_likes li
ON pa.page_id = li.page_id
WHERE li.page_id is NULL;