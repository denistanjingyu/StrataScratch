SELECT 'bull' AS word,
       SUM(CASE WHEN contents ILIKE '%bull%' THEN 1 ELSE 0 END) AS n_entry
FROM google_file_store
UNION
SELECT 'bear' AS word,
       SUM(CASE WHEN contents ILIKE '%bear%' THEN 1 ELSE 0 END) AS n_entry
FROM google_file_store;