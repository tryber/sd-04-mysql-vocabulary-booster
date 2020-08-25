SELECT
  (
    SELECT
      CONCAT(e.FirstName, ' ', e.LastName)
    FROM
      w3schools.employees AS e
    WHERE
      e.employeeID = o.employeeID
  ) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM
  w3schools.orders AS o
GROUP BY
  `Nome completo`
ORDER BY
  `Total de pedidos`;