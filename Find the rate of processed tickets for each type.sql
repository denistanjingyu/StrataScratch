SELECT a.type,
       b.no_processed :: FLOAT / a.total :: FLOAT AS rate_processed
FROM
(SELECT type, 
        count(*) AS total
 FROM facebook_complaints
 GROUP BY type) AS a
INNER JOIN
(SELECT type, 
        count(*) AS no_processed
 FROM facebook_complaints
 WHERE processed = TRUE
 GROUP BY type) AS b
ON a.type = b.type;