SELECT 
c.ContactName AS "Nome", 
c.Country AS "País",
ct.total - 1 AS "Número de compatriotas"
FROM w3schools.customers c
INNER JOIN (SELECT Country, Count(country) AS total FROM w3schools.customers GROUP BY Country HAVING total > 1) ct
ON ct.Country = c.Country
ORDER BY Nome;
