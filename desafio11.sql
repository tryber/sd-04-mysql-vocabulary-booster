select cust1.ContactName as `Nome`,
cust1.Country as `País`,
count(cust2.ContactName) as `Número de compatriotas`
from w3schools.customers as cust1, w3schools.customers as cust2
where cust1.Country = cust2.Country and cust1.ContactName <> cust2.ContactName
group by cust1.CustomerID
order by `Nome`;
