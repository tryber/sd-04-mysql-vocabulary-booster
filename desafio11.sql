SELECT cust1.ContactName AS `Nome`,
cust1.Country AS `País`,
COUNT(cust2.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS cust1, w3schools.customers AS cust2
WHERE cust1.Country = cust2.Country AND cust1.ContactName <> cust2.ContactName
GROUP BY cust1.CustomerID
ORDER BY `Nome`;
