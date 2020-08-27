SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
-- Contando quantas vezes o EmployeeID aparece nos resultados, que é igual ao número de pedidos realizados por cada Employee
  COUNT(o.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS o
  JOIN w3schools.employees AS e
    ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`; 
