SELECT
  CONCAT(Emp.FirstName, ' ',Emp.LastName) AS 'Nome completo',
  COUNT(Orders.OrderDate) AS 'Total de pedidos'
FROM w3schools.employees AS Emp
INNER JOIN w3schools.orders AS Orders
ON Emp.EmployeeID = Orders.EmployeeID
GROUP BY CONCAT(Emp.FirstName, ' ',Emp.LastName)
ORDER BY COUNT(Orders.OrderDate) ASC;
