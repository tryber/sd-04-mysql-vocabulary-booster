SELECT
  customers.CustomerName AS "Nome",
  customers.Country AS "País",
  (
    SELECT
      COUNT(*)
    FROM
      w3schools.customers AS queryCustomers
    WHERE
      queryCustomers.Country = customers.Country
      AND queryCustomers.ContactName <> customers.ContactName
  ) AS "Número de compatriotas"
FROM
  w3schools.customers AS customers
HAVING
  `Número de compatriotas` > 0
ORDER BY
  `Nome`;
  