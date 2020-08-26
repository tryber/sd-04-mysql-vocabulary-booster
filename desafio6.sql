SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) `Nome completo`,
j.JOB_TITLE `Cargo`, jh.START_DATE `Data de início do cargo`, d.DEPARTMENT_NAME `Departamento`
FROM hr.employees e
INNER JOIN hr.jobs j
INNER JOIN hr.departments d
INNER JOIN hr.job_history jh
ON j.JOB_ID = e.JOB_ID OR d.DEPARTMENT_ID = e.DEPARTMENT_ID OR jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, 
`Departamento` ASC;
