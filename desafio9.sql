SELECT (SELECT CONCAT(FirstName, ' ', LastName) FROM w3schools.employees AS emp WHERE emp.EmployeeID = ord.EmployeeID) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS ord
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
