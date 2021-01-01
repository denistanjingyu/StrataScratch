SELECT DISTINCT b.*
FROM facebook_reactions AS a
INNER JOIN facebook_posts AS b
ON a.post_id = b.post_id
WHERE a.reaction = 'heart';