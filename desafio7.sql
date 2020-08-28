SELECT UCASE(CONCAT(e.First_name, ' ', e.Last_name)) AS 'Nome completo',
j.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history as j
ON e.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(j.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
