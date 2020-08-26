-- requisito 9

-- Concatena FirstName e LastName e renomeia para 'Nome completo'
-- Conta (count) EmployeeID e renomeia para 'Total de pedidos'
-- Combina coluna EmployeeID nas tabelas employees e orders
-- Agrupa EmployeeID  e ordena por `Total de pedidos` crescente
SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees as employees
INNER JOIN w3schools.orders AS orders ON employees.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos` ASC;
