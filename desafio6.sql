SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS Cargo,
h.START_DATE AS `Data de início`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history AS h ON e.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
