SELECT business_postal_code,
       COUNT(DISTINCT LOWER(SPLIT_PART(business_address, ' ', 2))) AS street_name
FROM sf_restaurant_health_violations
GROUP BY business_postal_code;