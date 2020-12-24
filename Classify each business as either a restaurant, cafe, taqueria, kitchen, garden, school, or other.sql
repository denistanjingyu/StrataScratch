SELECT DISTINCT business_name,
       CASE 
           WHEN business_name ILIKE '%restaurant%' THEN 'Restaurant'
           WHEN business_name ILIKE '%cafe%' THEN 'Cafe'
           WHEN business_name ILIKE '%taqueria%' THEN 'Taqueria'
           WHEN business_name ILIKE '%kitchen%' THEN 'Kitchen'
           WHEN business_name ILIKE '%garden%' THEN 'Garden'
           WHEN business_name ILIKE '%school%' THEN 'School'
           ELSE 'Other'
       END AS business_type
FROM sf_restaurant_health_violations;