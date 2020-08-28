SELECT a.ContactName AS Nome,
  b.Country AS 'País',
  COUNT(*) AS 'Número de compatriotas'
  FROM w3schools.customers AS a,
  w3schools.customers AS b
  WHERE a.CustomerID <> b.CustomerID AND a.Country = b.Country
  GROUP BY a.CustomerID
  ORDER BY Nome;