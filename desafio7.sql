-- DESAFIO 7

SELECT UCASE(CONCAT(first_name, ' ', last_name)) as 'Nome completo',
IF(MONTH(start_date) IN (01, 02, 03), start_date, NULL) AS 'Data de início',
salary AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.employee_id = JH.employee_id;