select
concat(E.FirstName, ' ', E.LastName ) as `Nome completo`,
count(O.EmployeeID) as `Total de pedidos`
from w3schools.orders as O
inner join w3schools.employees as E on O.EmployeeID = E.EmployeeID
group by O.EmployeeID
order by `Total de pedidos`;
