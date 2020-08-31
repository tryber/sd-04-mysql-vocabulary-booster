SELECT
  c1.ContactName AS Nome,
  c1.Country AS País,
  (SELECT COUNT(*) FROM w3schools.customers AS c2 WHERE c2.Country = c1.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c1
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
