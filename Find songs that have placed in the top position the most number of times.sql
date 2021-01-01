SELECT trackname,
       COUNT(*) AS no_top
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY no_top DESC;