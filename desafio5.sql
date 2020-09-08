select j.JOB_TITLE as Cargo, (j.MAX_SALARY-j.MIN_SALARY) 'Variação Salarial',
round((j.min_salary /12),2) 'Média mínima mensal',
round((j.max_salary /12),2) 'Média máxima mensal'
from hr.jobs j
order by (j.max_salary - j.min_salary), Cargo;
