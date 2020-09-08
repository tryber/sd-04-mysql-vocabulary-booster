SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
DATE_FORMAT(start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(datediff(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS j
JOIN hr.employees AS e ON e.employee_id = j.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`