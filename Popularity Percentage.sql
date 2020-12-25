SELECT user1,
       (no_of_friends :: FLOAT / total :: FLOAT) * 100 AS popularity_percentage
FROM
(SELECT * 
 FROM
 (SELECT COUNT(*) AS total
  FROM
  (SELECT user1 
   FROM facebook_friends AS a
   UNION
   SELECT user2 
   FROM facebook_friends AS b) AS total_unique_users) AS a1
 CROSS JOIN
 (SELECT user1,
         COUNT(*) AS no_of_friends
  FROM
  (SELECT user1,
          user2
   FROM facebook_friends AS a
   UNION
   SELECT user2,
          user1
   FROM facebook_friends AS b) AS friends_per_user
  GROUP BY user1
  ORDER BY user1) AS a2) AS a3;