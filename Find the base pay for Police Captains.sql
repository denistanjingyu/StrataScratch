SELECT employeename,
       basepay
FROM sf_public_salaries
WHERE jobtitle ILIKE '%police%' AND
      jobtitle ILIKE '%captain%';