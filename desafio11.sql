SELECT
  CusA.ContactName AS Nome,
  CusA.Country AS País,
  COUNT(CusB.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS CusA, w3schools.customers AS CusB
WHERE CusA.Country = CusB.Country AND CusA.ContactName <> CusB.ContactName
GROUP BY CusA.CustomerID
ORDER BY Nome ASC;
