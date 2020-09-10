SELECT
CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
(
SELECT COUNT(*)
FROM w3schools.orders
WHERE EmployeeID = em.EmployeeID
) AS `Total de pedidos`
FROM w3schools.employees AS em
ORDER BY `Total de pedidos`;
