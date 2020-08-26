SELECT
CONCAT(t3.FIRST_NAME, ' ', t3.LAST_NAME) AS 'Nome completo',
t2.JOB_TITLE AS 'Cargo',
t1.START_DATE AS 'Data de início do cargo',
t4.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS t1
INNER JOIN hr.jobs AS t2 ON t1.JOB_ID = t2.JOB_ID
INNER JOIN hr.employees t3 ON t1.EMPLOYEE_ID = t3.EMPLOYEE_ID 
INNER JOIN hr.departments AS t4 ON t1.DEPARTMENT_ID = t3.DEPARTMENT_ID
ORDER BY 'Nome completo' DESC, 'Cargo';
