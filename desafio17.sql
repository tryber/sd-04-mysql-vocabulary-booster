SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
  start_date AS 'Data de início',
  end_date AS 'Data de rescisão',
  ROUND(datediff(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS j
  JOIN hr.employees AS e ON e.employee_id = j.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`
