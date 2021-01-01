SELECT a.nationality,
       COUNT(b.apartment_id) AS no_of_apartments
FROM
airbnb_hosts AS a
INNER JOIN airbnb_apartments AS b
ON a.host_id = b.host_id
WHERE a.age < 30
GROUP BY a.nationality
ORDER BY no_of_apartments DESC;