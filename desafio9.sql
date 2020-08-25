SELECT
(
SELECT CONCAT(FirstName, ' ', LastName)
FROM w3schools.employees
WHERE employees.EmployeeID = orders.EmployeeID
) AS `Nome completo`,
count(EmployeeID) AS `Total de pedidos`
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY `Total de pedidos`;
