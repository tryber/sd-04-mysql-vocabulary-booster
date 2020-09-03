SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS Cargo,
jh.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e, hr.jobs AS j, hr.job_history AS jh, hr.departments AS d
where e.JOB_ID = j.JOB_ID AND e.EMPLOYEE_ID = jh.EMPLOYEE_ID and jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo  ;
