SELECT 
CONCAT(emp.FirstName, " ", emp.LastName) AS "Nome completo",
COUNT(od.EmployeeID) AS "Total de pedidos"
FROM w3schools.employees emp
INNER JOIN w3schools.orders od
ON od.EmployeeID = emp.EmployeeID
GROUP BY od.EmployeeID
ORDER BY `Total de pedidos`;
