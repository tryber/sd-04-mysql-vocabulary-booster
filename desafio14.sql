SELECT distinct Country `País` from w3schools.customers
UNION
SELECT distinct Country `País` FROM w3schools.suppliers
ORDER BY `País`;
