select concat(e.first_name, ' ', e.last_name) as `Nome completo`,
  date_format(jh.start_date, "%d/%m/%y") as 'Data de início',
  date_format(jh.end_date, "%d/%m/%y") as 'Data de rescisão',
  round(datediff(jh.end_date, jh.start_date) / 365, 2) as `Anos trabalhados`
  from hr.job_history as jh
  inner join hr.employees as e
  on jh.employee_id = e.employee_id
  order by `Nome completo`, `Anos trabalhados`;
