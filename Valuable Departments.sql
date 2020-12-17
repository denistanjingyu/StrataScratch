SELECT c.name,
       (c.emp100k / d.empall::FLOAT) * 100 AS pct
FROM
(SELECT b.name,
        COUNT(a.id) AS emp100k
 FROM ms_employee AS a
 INNER JOIN ms_department AS b
 ON a.department_id = b.department_id
 WHERE a.salary > 100000
 GROUP BY b.name) AS c
LEFT JOIN
(SELECT b.name,
        COUNT(a.id) AS empall
 FROM ms_employee AS a
 INNER JOIN ms_department AS b
 ON a.department_id = b.department_id
 GROUP BY b.name) AS d
 ON c.name = d.name
 WHERE d.empall >= 10
 ORDER BY pct DESC
 LIMIT 3;