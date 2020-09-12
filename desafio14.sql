(
  SELECT
    suppliers.Country AS "País"
  FROM
    w3schools.suppliers AS suppliers
)
UNION
  (
    SELECT
      customers.Country
    FROM
      w3schools.customers AS customers
  )
ORDER BY
  `País`
LIMIT
  5;
