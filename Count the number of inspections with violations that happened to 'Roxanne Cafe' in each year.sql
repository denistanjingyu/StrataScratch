SELECT EXTRACT(YEAR FROM inspection_date :: DATE) AS year,
       COUNT(violation_id) AS n_inspections
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
AND violation_id IS NOT NULL
GROUP BY EXTRACT(YEAR FROM inspection_date :: DATE)
ORDER BY year ASC;