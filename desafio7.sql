SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)), jh.START_DATE;
