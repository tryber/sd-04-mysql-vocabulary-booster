SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS "Nome completo", 
jb.JOB_TITLE AS Cargo, 
jh.START_DATE AS "Data de início de cargo",
dp.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jb
ON emp.JOB_ID = jb.JOB_ID
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.departments AS dp
ON dp.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
