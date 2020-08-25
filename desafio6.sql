SELECT 
CONCAT(em.first_name, ' ', em.last_name) AS 'Nome completo',
jb.job_title AS Cargo,
hs.start_date AS 'Data de início do cargo',
dp.department_name as 'Departamento'
FROM hr.job_history AS hs
INNER JOIN hr.jobs as jb
ON hs.job_id = jb.JOB_ID
INNER JOIN hr.employees as em
ON em.EMPLOYEE_ID = hs.EMPLOYEE_ID
INNER JOIN hr.departments as dp
ON hs.department_id = dp.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
