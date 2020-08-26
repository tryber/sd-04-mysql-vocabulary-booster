SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) 'Nome completo', 
(SELECT JOB_TITLE FROM hr.jobs j WHERE j.JOB_ID = e.JOB_ID) 'Cargo',
(SELECT START_DATE FROM hr.job_history jh WHERE jh.EMPLOYEE_ID = e.EMPLOYEE_ID) 'Data de início do cargo',
(SELECT DEPARTMENT_NAME FROM hr.departments d WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID) 'Departamento' 
FROM hr.employees e
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, 
(SELECT DEPARTMENT_NAME FROM hr.departments d WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID) ASC;
SELECT * FROM hr.employees;
SELECT * FROM hr.job_history;
SELECT * FROM hr.jobs;
SELECT * FROM hr.departments; 

SELECT START_DATE FROM hr.job_history jh 