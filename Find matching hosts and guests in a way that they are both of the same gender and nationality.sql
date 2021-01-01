SELECT a.host_id,
       b.guest_id
FROM airbnb_hosts AS a
INNER JOIN airbnb_guests AS b
ON a.nationality = b.nationality AND
   a.gender = b.gender;