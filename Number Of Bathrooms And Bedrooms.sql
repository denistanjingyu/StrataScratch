SELECT city,
       property_type,
       AVG(bathrooms),
       AVG(bedrooms)
FROM airbnb_search_details
GROUP BY property_type, city;