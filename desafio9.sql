SELECT CONCAT_WS(' ', FirstName, LastName) AS 'Nome completo', 
COUNT(ShipperID) AS 'Total de pedidos' 
FROM employees e
INNER JOIN orders o ON  e.EmployeeID = o.EmployeeID
GROUP BY CONCAT_WS(' ', FirstName, LastName)
ORDER BY COUNT(ShipperID);
