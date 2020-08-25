SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome Completo',
(emp.HIRE_DATE)  AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees emp
INNER JOIN hr.jobs job
ON job.JOB_ID = emp.JOB_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), emp.HIRE_DATE;
