SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
history.START_DATE AS 'Data de início no cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
JOIN hr.job_history AS history
ON employees.EMPLOYEE_ID = history.EMPLOYEE_ID
JOIN hr.departments AS departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY 'Nome completo' DESC, 'Cargo' DESC;
