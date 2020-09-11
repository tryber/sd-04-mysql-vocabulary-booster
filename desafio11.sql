SELECT
ContactName AS Nome,
Country AS País,
(
SELECT COUNT(*) - 1
FROM w3schools.customers
WHERE Country = c.Country
) AS `Números de compatriotas`
FROM w3schools.customers AS c
ORDER BY Nome;
