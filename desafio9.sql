SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.orders;
SELECT * FROM w3schools.order_details;
SELECT 
(SELECT CONCAT(FirstName, ' ', LastName) fullname FROM w3schools.employees e 
WHERE e.EmployeeID = o.EmployeeID) `Nome completo`,
(SELECT Quantity FROM w3schools.order_details od 
WHERE od.OrderID = o.OrderID AND o.EmployeeID = e.EmployeeID) `Total de pedidos` 
FROM w3schools.orders o, w3schools.employees e 
group by `Nome completo`
order by `Nome completo`;