SELECT first_name
FROM
customers
WHERE id NOT IN (SELECT cust_id
                 FROM orders
                 WHERE order_date BETWEEN '2019-02-01' AND '2019-03-01');