SELECT (
SELECT CONCAT(FirstName, ' ', LastName) FROM w3schools.employees
WHERE EmployeeID = w3schools.orders.EmployeeID) AS `Nome completo`,
COUNT(OrderID) AS 'Total de pedidos'
FROM w3schools.orders
GROUP BY `Nome completo`
ORDER BY 2;
