/* 
Link to Stratascratch profile:          https://platform.stratascratch.com/user/Jespervb
Link to Hackerrank profile:             https://www.hackerrank.com/jeppakanopolo?hr_r=1
Link to current interview question:     https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=1
Interview question title:               Find how many times each artist appeared on the Spotify ranking list
*/ 

SELECT 
        artist 
    ,   COUNT(artist) AS count_artists
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY 2 DESC;