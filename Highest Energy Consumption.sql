WITH total_consumption
AS
(
 SELECT date,
        SUM(consumption) AS sum_consumption
 FROM (SELECT *
       FROM
       fb_eu_energy
       UNION ALL
       SELECT *
       FROM
       fb_asia_energy
       UNION ALL
       SELECT *
       FROM
       fb_na_energy) a
 GROUP BY date
)
     
SELECT date,
       sum_consumption
FROM total_consumption
WHERE sum_consumption = (SELECT MAX(sum_consumption)
                         FROM total_consumption);