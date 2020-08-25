-- DESAFIO 7

SELECT UCASE(CONCAT(E.first_name, ' ', E.last_name)) as 'Nome completo',
JH.start_date AS 'Data de início',
E.salary AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.employee_id = JH.employee_id
WHERE MONTH(JH.start_date) IN (01, 02, 03)
ORDER BY UCASE(CONCAT(E.first_name, ' ', E.last_name)), JH.start_date;
