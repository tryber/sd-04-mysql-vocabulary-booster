SELECT (
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM hr.employees
WHERE EMPLOYEE_ID = job_history.EMPLOYEE_ID) AS 'Nome completo',
(SELECT JOB_TITLE FROM hr.jobs
WHERE JOB_ID = hr.job_history.JOB_ID) AS 'Cargo',
START_DATE AS 'Data de início do cargo',
(SELECT DEPARTMENT_NAME FROM hr.departments
WHERE DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID) AS 'Departamento'
FROM hr.job_history
ORDER BY 1 DESC, 2 LIMIT 10;
