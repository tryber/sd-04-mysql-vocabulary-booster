SELECT
ContactName AS Nome,
Country AS País,
(
SELECT COUNT(*) - 1
FROM w3schools.customers
WHERE Country = c.Country
) AS `Números de compatriotas`
FROM w3schools.customers AS c
HAVING `Números de compatriotas` > 0
ORDER BY Nome;
