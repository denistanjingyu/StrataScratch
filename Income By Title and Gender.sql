SELECT a.employee_title,
       a.sex,
       AVG(a.salary + b.bonus) AS avg_total_compensation
FROM sf_employee AS a
INNER JOIN sf_bonus AS b
ON a.id = b.worker_ref_id
GROUP BY a.employee_title, a.sex;