SELECT first_name,
       target
FROM
(SELECT first_name,
        target,
        MAX(target) OVER() AS highest_target
 FROM salesforce_employees
 WHERE manager_id = 13) AS temp
WHERE target = highest_target;