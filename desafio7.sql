SELECT (
SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) FROM hr.employees
WHERE EMPLOYEE_ID = job_history.EMPLOYEE_ID) AS 'Nome completo',
START_DATE AS 'Data de início',
(SELECT SALARY FROM hr.employees
WHERE EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID) AS 'Salário'
FROM hr.job_history
ORDER BY 1, 2
LIMIT 10
OFFSET 1
