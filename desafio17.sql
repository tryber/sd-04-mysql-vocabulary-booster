select(select concat(first_name, ' ', last_name)from hr.employees as e
where e.employee_id = jh.employee_id
) as 'nome completo',
date_format (start_date,'%d/%m/%y') as `data de início`,
date_format (end_date,'%d/%m/%y') as `data de rescisão`,
round(datediff(end_date, start_date) / 365, 2) as `anos trabalhados`
from hr.job_history as jh
where jh.employee_id <> 0
order by `nome completo` asc, `anos trabalhados` asc;
