SELECT
ContactName AS Nome,
Country AS País,
COUNT(Country) AS `Número de compatriotas`
FROM w3schools.customers
GROUP BY Country
ORDER BY Nome;
