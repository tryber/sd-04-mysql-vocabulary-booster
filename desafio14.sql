select Country from w3schools.suppliers
union
select Country from w3schools.customers
GROUP BY Country
ORDER BY Country
LIMIT 5;
