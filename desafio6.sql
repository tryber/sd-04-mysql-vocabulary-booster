SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS Cargo,
d.DEPARTMENT_NAME AS Department
FROM hr.job_history AS jh
JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
JOIN hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
JOIN hr.departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
