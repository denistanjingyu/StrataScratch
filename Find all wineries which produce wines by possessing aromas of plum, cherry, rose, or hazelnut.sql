SELECT winery
FROM winemag_p1
WHERE description ILIKE '%plum%' OR
      description ILIKE '%cherry%' OR
      description ILIKE '%rose%' OR
      description ILIKE '%hazelnut%';