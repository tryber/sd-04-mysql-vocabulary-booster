SELECT c.ContactName AS `Nome`,
c.Country AS `País`,
COUNT(cc.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS c, w3schools.customers AS cc
WHERE c.ContactName <> cc.ContactName AND c.Country = cc.Country
GROUP BY c.CustomerID
ORDER BY `Nome`;
