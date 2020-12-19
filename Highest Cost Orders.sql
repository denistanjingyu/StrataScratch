WITH total
AS
(SELECT c.first_name AS first_name, 
        o.order_cost * o.order_quantity AS total_order_cost, 
        o.order_date AS order_date
 FROM customers c
 INNER JOIN
 orders o
 ON c.id = o.cust_id
 WHERE o.order_date BETWEEN '2019-02-01' AND '2019-05-01'
 GROUP BY o.cust_id, c.first_name, o.order_date, o.order_cost, o.order_quantity
 ORDER BY total_order_cost DESC
)

SELECT first_name, 
       total_order_cost, 
       order_date
FROM total
WHERE total_order_cost = (SELECT MAX(total_order_cost)
                          FROM total);