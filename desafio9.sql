select concat(e.FirstName, ' ', e.LastName) `Nome completo`,
count(o.EmployeeID) "Total de pedidos"
from w3schools.employees e
inner join w3schools.orders o on e.EmployeeID = o.EmployeeID
group by `Nome completo`
order by count(o.EmployeeID);
