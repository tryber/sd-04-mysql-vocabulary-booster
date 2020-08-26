SELECT a.contactName AS 'Nome',
  a.country AS 'País',
  COUNT(b.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS a,
  w3schools.customers AS b
WHERE a.country = b.country
  AND a.contactName <> b.contactName
GROUP BY a.customerID
ORDER BY a.contactName;
