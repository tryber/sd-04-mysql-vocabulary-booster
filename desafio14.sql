-- select * from w3schools.customers;
-- select * from w3schools.suppliers;
SELECT Country AS País FROM w3schools.customers
UNION
SELECT Country AS País FROM w3schools.suppliers
GROUP BY País
ORDER BY País
LIMIT 5;
