SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome Completo',
job.JOB_TITLE AS 'Cargo',
his.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS his
INNER JOIN hr.jobs AS job
ON his.JOB_ID = job.JOB_ID
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON his.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY 'Nome Completo' DESC, 'Cargo';
