select * from hr.employees;

select j.JOB_TITLE as Cargo, round(AVG(e.salary),2) 'Média Salarial', (
case
when round(AVG(e.salary),2) between 2000 and 5800 then 'Júnior'
when round(AVG(e.salary),2) between 5801 and 7500 then 'Pleno'
when round(AVG(e.salary),2) between 7501 and 10500 then 'Sênior'
else 'CEO'
end) Senioridade
from hr.jobs j
inner join hr.employees e
on e.JOB_ID = j.JOB_ID
group by j.JOB_TITLE
order by round(AVG(e.salary),2), j.JOB_TITLE;
