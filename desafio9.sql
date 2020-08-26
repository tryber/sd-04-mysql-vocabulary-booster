SELECT CONCAT(firstName, ' ', lastName) AS 'Nome completo',
  COUNT (orderID) AS 'Total de pedidos'
FROM w3schools.orders AS o
  JOIN w3schools.employees AS e ON o.employeeID = e.employeeID
GROUP BY o.employeeID
ORDER BY `Total de pedidos`;
