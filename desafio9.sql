-- DESAFIO 9

SELECT CONCAT(firstName, ' ', lastName) AS `Nome completo`,
(SELECT COUNT(orderId) FROM w3schools.orders WHERE orders.employeeId = w3schools.employees.employeeId) AS `Total de pedidos`
FROM w3schools.employees
WHERE (SELECT COUNT(orderId) FROM w3schools.orders WHERE orders.employeeId = w3schools.employees.employeeId) > 0 ORDER BY `Total de pedidos`;
