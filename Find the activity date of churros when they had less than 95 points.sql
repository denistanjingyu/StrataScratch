SELECT activity_date,
       pe_description 
FROM los_angeles_restaurant_health_inspections
WHERE facility_name = 'STREET CHURROS' AND
      score < 95;