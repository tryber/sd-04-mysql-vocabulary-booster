SELECT CONCAT(E.FirstName, ' ', E.LastName) 'Nome completo', (COUNT(E.EmployeeID)) 'Total de pedidos'
FROM w3schools.employees E
INNER JOIN w3schools.orders O on O.EmployeeID = E.EmployeeID
GROUP BY CONCAT(E.FirstName, ' ', E.LastName)
ORDER BY (COUNT(E.EmployeeID));
