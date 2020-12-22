SELECT o.cust_id, 
       c.first_name,
       MIN(o.order_cost) AS lowest_order_price
FROM
customers AS C
INNER JOIN orders AS o
ON c.id = o.cust_id
GROUP BY o.cust_id, c.first_name;