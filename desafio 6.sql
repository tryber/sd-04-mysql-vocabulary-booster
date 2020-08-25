SELECT 
CONCAT(em.first_name, ' ', em.last_name) AS 'Nome Completo',
jb.job_title AS Cargo,
hs.start_date AS 'Data de início do cargo',
dp.department_name as 'Departamento'
FROM hr.employees AS em
INNER JOIN hr.jobs as jb
ON jb.job_id = em.JOB_ID
INNER JOIN hr.job_history as hs
ON hs.EMPLOYEE_ID = em.EMPLOYEE_ID
INNER JOIN hr.departments as dp
ON dp.department_id = em.DEPARTMENT_ID
ORDER BY CONCAT(em.first_name, ' ', em.last_name) DESC, Cargo;
