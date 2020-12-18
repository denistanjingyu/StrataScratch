SELECT state,
       COUNT(*) AS s
FROM yelp_business
WHERE stars = 5
GROUP BY state, state
ORDER BY s DESC, state ASC
LIMIT 5;