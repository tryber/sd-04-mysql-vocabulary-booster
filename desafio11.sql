SELECT c1.CustomerName AS 'Nome',
c1.Country AS `País`,
COUNT(c2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS c1
JOIN w3schools.customers AS c2
ON c1.CustomerID <> c2.CustomerID AND c1.Country = c2.Country
GROUP BY c1.CustomerID
ORDER BY c1.CustomerName;