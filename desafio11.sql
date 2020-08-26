SELECT
  ContactName as Nome,
  Country as País,
  (
    SELECT
      Count(Country) -1
    FROM
      w3schools.customers
    Where
      country = `País`
    GROUP BY
      Country
  ) AS 'Números de compatriotas'
FROM
  w3schools.customers
having
  `Números de compatriotas` > 0
ORDER BY
  ContactName;