SELECT
	-- ContactName AS Nome,
  Country AS País,
  COUNT(*) - 1 AS 'Número de compatriotas' 
FROM w3schools.customers
GROUP BY Country
HAVING `Número de compatriotas` > 0
-- ORDER BY Nome;
