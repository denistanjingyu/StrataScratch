SELECT temp.date,
       non_paying,
       paying
FROM
(SELECT c.date, 
        SUM(CASE WHEN b.paying_customer = 'no' THEN c.downloads ELSE 0 END) 
            AS non_paying,
        SUM(CASE WHEN b.paying_customer = 'yes' THEN c.downloads ELSE 0 END) 
            AS paying
 FROM ms_user_dimension AS a
 INNER JOIN ms_acc_dimension AS b
 ON a.acc_id = b.acc_id
 INNER JOIN ms_download_facts AS c
 ON a.user_id = c.user_id
 GROUP BY c.date
 ORDER BY c.date ASC) AS temp
WHERE non_paying > paying;