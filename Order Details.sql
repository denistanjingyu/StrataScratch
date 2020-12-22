SELECT o.order_date,
       o.order_details,
       o.order_cost,
       c.first_name
FROM
customers AS c
INNER JOIN orders AS o
ON c.id = o.cust_id
WHERE c.first_name IN ('Jill', 'Eva')
ORDER BY o.cust_id ASC;