SELECT * FROM hr.employees;
SELECT * FROM hr.job_history;
SELECT * FROM hr.jobs;
SELECT * FROM hr.departments;
SELECT UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) 'Nome completo',
(SELECT START_DATE FROM hr.job_history jh WHERE jh.JOB_ID = e.JOB_ID AND MONTH(jh.START_DATE) <= (3)) 'Data de início',
SALARY 'Salário'
FROM hr.employees e 
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) ASC;
