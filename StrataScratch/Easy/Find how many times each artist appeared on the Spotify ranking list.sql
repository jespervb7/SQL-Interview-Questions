-- Find how many times each artist appeared on the Spotify ranking list

SELECT 
    artist, 
    COUNT(artist) 
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY 2 DESC;