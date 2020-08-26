SELECT 
CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) AS 'Nome completo',e.EMPLOYEE_ID,
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
LEFT JOIN hr.job_history h ON j.JOB_ID = h.JOB_ID
INNER JOIN hr.departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) DESC,  j.JOB_TITLE ASC;
