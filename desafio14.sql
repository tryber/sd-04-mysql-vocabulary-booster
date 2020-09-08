select distinct Country as `País` from w3schools.customers
union
select distinct Country from w3schools.suppliers
order by `País` asc limit 5;
