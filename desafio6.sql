SELECT * FROM hr.employees;
SELECT * FROM hr.jobs;
SELECT * FROM hr.departments;
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) 'Nome completo', 
(SELECT JOB_TITLE FROM hr.jobs j WHERE j.JOB_ID = e.JOB_ID) 'Cargo',
HIRE_DATE 'Data de início do cargo',
(SELECT DEPARTMENT_NAME FROM hr.departments d WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID) 'Departamento' 
FROM hr.employees e 
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, (SELECT DEPARTMENT_NAME FROM hr.departments d WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID) ASC;
