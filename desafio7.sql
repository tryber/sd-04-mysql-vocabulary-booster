SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
  start_date AS 'Data de início',
  salary AS 'Salário'
FROM hr.job_history AS j
  JOIN hr.employees AS e ON e.employee_id = j.employee_id
WHERE MONTH(start_date) BETWEEN 1 AND 3
ORDER BY `Nome completo`,
  start_date;
