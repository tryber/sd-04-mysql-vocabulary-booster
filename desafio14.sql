(SELECT country AS 'País' FROM w3schools.suppliers)
UNION
(SELECT country AS 'País' FROM w3schools.customers)
LIMIT 5
Order by `País`
