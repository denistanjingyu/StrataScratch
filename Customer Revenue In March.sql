SELECT cust_id,
       SUM(order_quantity * order_cost) AS revenue
FROM orders
WHERE order_date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY cust_id
ORDER BY revenue DESC;