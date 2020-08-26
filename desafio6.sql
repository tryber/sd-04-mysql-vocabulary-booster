SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome`,
jb.JOB_TITLE AS `Cargo`, 
em.HIRE_DATE AS `Data de início do cargo`,
dp.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS jh
INNER JOIN hr.jobs AS jb
ON jh.JOB_ID=jb.JOB_ID
INNER JOIN hr.departments AS dp
ON jh.DEPARTMENT_ID=dp.DEPARTMENT_ID
INNER JOIN hr.employees AS em
ON em.EMPLOYEE_ID=jh.EMPLOYEE_ID
ORDER BY `Nome` DESC, `Cargo`;
