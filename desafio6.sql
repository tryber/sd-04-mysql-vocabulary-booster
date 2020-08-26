SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS "Nome completo", 
jb.JOB_TITLE AS Cargo, 
jh.START_DATE AS "Data de início do cargo",
dp.DEPARTMENT_NAME AS "Departamento"
FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jb
ON jh.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments AS dp
ON dp.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo, `Data de início do cargo` DESC;
