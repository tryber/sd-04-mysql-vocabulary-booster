SELECT t1.ContactName AS Nome,
  t2.Country AS 'País',
  COUNT(*) AS 'Número de compatriotas'
  FROM w3schools.customers AS t1,
  w3schools.customers AS t2
  WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID
  GROUP BY t2.CustomerID
  ORDER BY Nome;
