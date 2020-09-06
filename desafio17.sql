SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jh.START_DATE,'%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(jh.END_DATE,'%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF((jh.END_DATE), (jh.START_DATE)) / 365, 2) AS `Anos trabalhados`
-- ROUND(YEAR(jh.END_DATE) - YEAR(jh.START_DATE), 2) AS `Anos trabalhados`
-- ROUND(TIMESTAMPDIFF(DAY, jh.start_date, jh.end_date) / 365, 2) AS 'Teste'
FROM hr.employees AS employees
JOIN hr.job_history AS jh
ON employees.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME);