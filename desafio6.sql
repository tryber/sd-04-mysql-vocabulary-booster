SELECT concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome Completo`,
jb.JOB_TITLE `Cargo`,
hist.START_DATE 'Data de início do cargo',
dep.DEPARTMENT_NAME 'Departamento'
FROM hr.job_history hist
INNER JOIN hr.jobs jb ON hist.JOB_ID = jb.JOB_ID
INNER JOIN hr.employees emp ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.departments dep ON emp.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
