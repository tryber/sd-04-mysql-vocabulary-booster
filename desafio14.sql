select country as País from customers
union
select country as País from suppliers
order by País
limit 5;
