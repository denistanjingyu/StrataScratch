SELECT a.location,
       AVG(b.popularity)
FROM facebook_employees AS a
INNER JOIN facebook_hack_survey AS b
ON a.id = b.employee_id
GROUP BY a.location;