select a.ContactName as Nome, a.country as País, count(a.country) as "Número de compatriotas" from customers a, customers b
where a.country = b.country and a.ContactName <> b.ContactName
group by a.ContactName
order by 1;
