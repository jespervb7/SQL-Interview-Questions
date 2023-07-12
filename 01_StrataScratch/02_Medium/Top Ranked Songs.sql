/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=5
Interview question title:               Top Ranked Songs
*/ 

SELECT 
        trackname
    ,   COUNT(trackname)       AS times_top1
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY 2 DESC;