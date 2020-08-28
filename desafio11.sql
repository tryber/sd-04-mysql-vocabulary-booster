select * from w3schools.customers;

select c1.ContactName Nome, c1.country País, count(c2.country) "Número de compatriotas"
from w3schools.customers c1
inner join w3schools.customers c2 on c1.Country = c2.Country and c1.CustomerID <> c2.CustomerID
group by País, Nome
order by Nome;