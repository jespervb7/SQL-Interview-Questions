/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar?code_type=5
Interview question title:               Count the number of movies that Abigail Breslin nominated for oscar
*/

SELECT
        COUNT(*)        AS n_movies_by_abi
FROM oscar_nominees
WHERE nominee = 'Abigail Breslin'