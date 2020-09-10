select 
  concat(employees.FIRST_NAME,' ',employees.LAST_NAME) as `Nome completo`,
    date_format(history.start_date, '%d/%m/%Y') as 'Data de início',
    date_format(history.end_date, '%d/%m/%Y') as 'Data de rescisão',
    round(datediff(history.end_date, history.start_date)/365, 2) as `Anos trabalhados`
from
  hr.employees as employees INNER JOIN hr.job_history as history
    ON employees.EMPLOYEE_ID = history.EMPLOYEE_ID
order by `Nome completo` , `Anos trabalhados`;
