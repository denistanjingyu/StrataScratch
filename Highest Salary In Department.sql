SELECT department,
       first_name,
       salary
FROM
(SELECT department,
        first_name,
        salary,
        MAX(salary) OVER(PARTITION BY department) AS max_sal
 FROM employee) AS max_table
WHERE salary = max_sal;