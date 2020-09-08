select concat(e.first_name, ' ', e.last_name) as `nome completo`,
  date_format(jh.start_date, "%d/%m/%y") as 'data de início',
  date_format(jh.end_date, "%d/%m/%y") as 'data de rescisão',
  round(datediff(jh.end_date, jh.start_date) / 365, 2) as `anos trabalhados`
  from hr.job_history as jh
  inner join hr.employees as e
  on jh.employee_id = e.employee_id
  order by `nome completo`, `anos trabalhados`;
