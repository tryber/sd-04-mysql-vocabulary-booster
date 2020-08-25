--  select * from hr.employees;
--  select * from hr.job_history;
SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`, history.START_DATE AS `Data de início` FROM hr.employees AS employees
INNER JOIN hr.job_history AS history on employees.EMPLOYEE_ID = history.EMPLOYEE_ID
WHERE MONTH(history.START_DATE) BETWEEN '01' AND '03'
ORDER BY `Nome completo`, `Data de início`;
