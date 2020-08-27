SELECT CONCAT(em.FirstName,' ',em.LastName) AS `Nome completo`,
COUNT(od.OrderID) AS `Total de pedidos`
FROM w3schools.orders AS od
INNER JOIN w3schools.employees AS em
ON od.EmployeeID=em.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
