SELECT
  CONCAT(employees.FirstName, " ", employees.LastName) AS "Nome completo",
  COUNT(*) AS "Total de pedidos"
FROM
  w3schools.orders as orders
  INNER JOIN w3schools.employees AS employees ON (employees.EmployeeID = orders.EmployeeID)
GROUP BY
  `Nome completo`
ORDER BY
  `Total de pedidos`;
