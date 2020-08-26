SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome Completo`,
his.START_DATE  AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON emp.employee_id = emp.employee_id
WHERE MONTH()
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME), emp.HIRE_DATE;
