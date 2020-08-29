SELECT 
  c.ContactName Nome,
  c.Country País,
  COUNT(*) - 1 `Número de compatriotas`
FROM
  w3schools.customers c,
  w3schools.customers c2
WHERE
  c.Country = c2.Country
GROUP BY
  Nome
HAVING
  `Número de compatriotas` > 0
ORDER BY
  Nome;
