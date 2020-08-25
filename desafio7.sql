SELECT UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) 'Nome completo', J.JOB_TITLE Cargo, JH.START_DATE 'Data de início', E.SALARY Salário
FROM hr.employees E
INNER JOIN hr.job_history JH on JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs J on J.JOB_ID = JH.JOB_ID
INNER JOIN hr.departments D on D.DEPARTMENT_ID = JH.DEPARTMENT_ID
HAVING MONTH(JH.START_DATE) in (01, 02, 03)
ORDER BY UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)), JH.START_DATE;
