SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
  DATE_FORMAT(job_history.start_date, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(job_history.end_date, '%d/%m/%Y') AS `Data de rescisão`,
  round(datediff(job_history.end_date, job_history.start_date) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS job_history
  INNER JOIN hr.employees AS employees ON job_history.employee_id = employees.employee_id
ORDER BY `Nome completo`,
  `Anos trabalhados`;
