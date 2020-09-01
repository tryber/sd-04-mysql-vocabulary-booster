SELECT DISTINCT Country `País` from w3schools.customers
UNION
SELECT DISTINCT Country `País` FROM w3schools.suppliers
ORDER BY `País` LIMIT 5;
