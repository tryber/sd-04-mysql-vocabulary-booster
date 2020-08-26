SELECT c1.ContactName Nome, c1.Country País, COUNT(c1.country) 'Número de compatriotas'
FROM w3schools.customers c1
INNER JOIN w3schools.customers c2 ON c1.Country = c2.Country AND c1.CustomerID <> c2.CustomerID
group by País, Nome
order by Nome; 
