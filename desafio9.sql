SELECT CONCAT(FirstName , ' ', LastName) AS 'Nome completo',
(SELECT COUNT(*) FROM w3schools.orders
WHERE EmployeeID = w3schools.employees.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees
WHERE (SELECT COUNT(*) FROM w3schools.orders
WHERE EmployeeID = w3schools.employees.EmployeeID) > 0
ORDER BY (SELECT COUNT(*) FROM w3schools.orders
WHERE EmployeeID = w3schools.employees.EmployeeID);
