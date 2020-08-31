SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
history.START_DATE AS 'Data de início no cargo',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
JOIN hr.job_history AS history
ON employees.EMPLOYEE_ID = history.EMPLOYEE_ID
WHERE MONTH(history.START_DATE) IN (1, 2, 3)
ORDER BY 'Nome completo', 'Data de início';
