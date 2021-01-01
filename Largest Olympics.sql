SELECT games,
       COUNT(DISTINCT name) AS no_ath
FROM olympics_athletes_events
GROUP BY games
ORDER BY no_ath DESC
LIMIT 1;