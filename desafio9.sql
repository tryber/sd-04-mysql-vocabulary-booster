SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(orders.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS orders
JOIN w3schools.employees AS employees
WHERE orders.EmployeeID = employees.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos`;
