select job_title as Cargo,
(max_salary - min_salary) as 'Variação Salarial',
round((min_salary / 12), 2) as 'Média mínima mensal',
round((max_salary / 12), 2) as 'Média máxima mensal'
from jobs
group by job_title
order by 2, 1;
