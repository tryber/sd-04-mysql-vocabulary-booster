select concat(e.FirstName, ' ', e.LastName) `Nome Completo`,
count(o.EmployeeID) "Total de pedidos"
from w3schools.employees e
inner join w3schools.orders o on e.EmployeeID = o.EmployeeID
group by `Nome Completo`
order by count(o.EmployeeID);
