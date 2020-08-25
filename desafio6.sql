SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome Completo',
(job.JOB_TITLE) AS Cargo,
emp.HIRE_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees emp
INNER JOIN hr.jobs job
ON job.JOB_ID = emp.JOB_ID
INNER JOIN hr.departments dep
ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, Cargo;
