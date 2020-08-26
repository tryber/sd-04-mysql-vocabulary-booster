SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome Completo`,
his.START_DATE  AS `Data de início`,
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON emp.employee_id = his.employee_id
WHERE MONTH(his.START_DATE) IN (1,2,3)
ORDER BY `Nome Completo`, `Data de início`;
