SELECT concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome Completo',
jb.JOB_TITLE 'Cargo',
emp.HIRE_DATE 'Data de início do cargo',
dep.DEPARTMENT_NAME 'Departamento'
FROM  hr.employees emp
INNER JOIN hr.jobs jb ON emp.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments dep ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, jb.JOB_TITLE;
