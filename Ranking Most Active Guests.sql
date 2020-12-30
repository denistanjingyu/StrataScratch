SELECT DENSE_RANK() OVER(ORDER BY SUM(n_messages) DESC) AS ranking,
       id_guest,
       SUM(n_messages) AS sum_msg
FROM airbnb_contacts
GROUP BY id_guest;