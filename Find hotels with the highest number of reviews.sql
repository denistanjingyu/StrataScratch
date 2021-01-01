SELECT hotel_name,
       MAX(total_number_of_reviews) AS no
FROM hotel_reviews
GROUP BY hotel_name
ORDER BY no DESC;