SELECT COUNT(DISTINCT(c.user_id))
FROM
(SELECT user_id,
        COUNT(DISTINCT(created_at)) AS a,
        COUNT(DISTINCT(product_id)) AS b
 FROM marketing_campaign
 GROUP BY user_id
 HAVING COUNT(DISTINCT(created_at)) != 1 
 AND COUNT(DISTINCT(product_id)) != 1) AS c;