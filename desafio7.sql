SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
his.start_date AS `Data de início`,
emp.salary AS 'Salário'
FROM hr.employees AS emp
INNER JOIN job_history AS his ON emp.employee_id = his.employee_id
WHERE MONTH
(his.start_date) IN
(1, 2, 3)
ORDER BY `Nome completo` , `Data de início`;
