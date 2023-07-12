-- Find how many times each artist appeared on the Spotify ranking list

SELECT 
        artist 
    ,   COUNT(artist) AS count_artists
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY 2 DESC;