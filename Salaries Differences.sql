SELECT
(SELECT MAX(emp.salary) 
 FROM db_employee AS emp
 INNER JOIN db_dept AS dept
 ON emp.department_id = dept.id
 GROUP BY dept.department
 HAVING dept.department = 'marketing')
-
(SELECT MAX(emp.salary)
 FROM db_employee AS emp
 INNER JOIN db_dept AS dept
 ON emp.department_id = dept.id
 GROUP BY dept.department
 HAVING dept.department = 'engineering') AS sal_diff