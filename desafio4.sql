select j.job_title as Cargo, round(AVG(e.salary),2) 'Média salarial', 
case
when AVG(e.salary) between 2000 and 5800 then 'Júnior'
when AVG(e.salary) between 5801 and 7500 then 'Pleno'
when AVG(e.salary) between 7501 and 10500 then 'Sênior'
else 'CEO'
end Senioridade
from hr.jobs j
inner join hr.employees e
on e.JOB_ID = j.JOB_ID
group by j.JOB_TITLE
order by round(AVG(e.salary),2), j.JOB_TITLE;
