SELECT host_pop_rating,
       MIN(price) AS min_price,
       AVG(price) AS avg_price,
       MAX(price) AS max_price
FROM
(SELECT host_id,
        price,
        (CASE
             WHEN number_of_reviews = 0 THEN 'New'
             WHEN number_of_reviews BETWEEN 1 AND 5 THEN 'Rising'
             WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'Trending Up'
             WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'Popular'
             WHEN number_of_reviews > 40 THEN 'Hot'
         END) AS host_pop_rating
 FROM
 (SELECT host_id,
         price,
         number_of_reviews
  FROM
  (SELECT *, 
          CONCAT(price, room_type, host_since, zipcode) AS host_id
   FROM airbnb_host_searches) AS host
  GROUP BY host_id, price, number_of_reviews) AS pop) AS group_by_pop
GROUP BY host_pop_rating;