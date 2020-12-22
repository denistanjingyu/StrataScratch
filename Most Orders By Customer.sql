SELECT c.first_name,
       COUNT(o.order_quantity) AS num_orders
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.cust_id
GROUP BY o.cust_id, c.first_name
ORDER BY num_orders DESC
LIMIT 1;