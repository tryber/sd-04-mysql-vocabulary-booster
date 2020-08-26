SELECT
  Country AS `Pais`
FROM
  w3schools.customers
UNION
SELECT
  Country AS `Pais`
FROM
  w3schools.suppliers
ORDER BY
  `Pais`
LIMIT
  5;
