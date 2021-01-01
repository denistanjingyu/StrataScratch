SELECT DISTINCT year_rank,
       group_name,
       song_name
FROM billboard_top_100_year_end
WHERE year = 2010
ORDER BY year_rank ASC
LIMIT 10;