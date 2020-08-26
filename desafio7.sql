SELECT UCASE(concat(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome Completo`,
hist.START_DATE AS `Data de início`,
emp.SALARY as `Salário`
FROM hr.employees as emp
INNER JOIN hr.job_history hist ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) IN(1, 2, 3)
ORDER BY `Nome Completo`, `Data de Início`;
