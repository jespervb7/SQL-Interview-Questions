/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010?code_type=5
Interview question title:               Find the top 10 ranked songs in 2010
*/

SELECT DISTINCT TOP(10)
        year_rank
    ,   group_name
    ,   song_name
FROM billboard_top_100_year_end
WHERE year = 2010
ORDER BY year_rank