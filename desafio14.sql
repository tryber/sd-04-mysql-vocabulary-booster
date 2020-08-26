(SELECT country AS 'País' FROM w3schools.suppliers)
UNION
(SELECT country AS 'País' FROM w3schools.customers)
Order by `País`
LIMIT 5;
