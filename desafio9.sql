select concat(e.firstName,' ',e.lastname) as 'Nome completo', count(o.employeeid) from employees e, orders o
where e.EmployeeID = o.EmployeeID
group by o.employeeid
order by 2;
