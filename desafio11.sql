SELECT
n.ContactName AS Nome,
n.Country AS País,
COUNT(c.ContactName) AS `Número de compatriotas`
FROM
w3schools.customers n,
w3schools.customers c
WHERE n.CustomerID <> c.CustomerID
AND n.Country = c.Country
GROUP BY n.ContactName
ORDER BY Nome;
