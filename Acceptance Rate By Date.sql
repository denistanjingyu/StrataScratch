SELECT c.date,
       (c.count::FLOAT / d.count::FLOAT)
FROM
(SELECT a.date,
       COUNT(*)
FROM fb_friend_requests AS a
INNER JOIN
fb_friend_requests AS b
ON a.user_id_sender = b.user_id_sender
AND a.user_id_receiver = b.user_id_receiver
AND a.action = 'sent'
AND b.action = 'accepted'
GROUP BY a.date) AS c
INNER JOIN
(SELECT a.date,
      COUNT(*)
FROM fb_friend_requests AS a
INNER JOIN
fb_friend_requests AS b
ON a.user_id_sender = b.user_id_sender
AND a.user_id_receiver = b.user_id_receiver
AND a.action = 'sent'
AND b.action != 'accepted'
GROUP BY a.date) AS d
ON c.date = d.date
ORDER BY c.date ASC;