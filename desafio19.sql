SELECT * FROM employees; SELECT * FROM departments; SELECT * FROM job_history; SELECT * FROM jobs;

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_emp VARCHAR(300))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`, D.DEPARTMENT_NAME Departamento, J.JOB_TITLE Cargo
FROM hr.employees E 
INNER JOIN hr.job_history JH on JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs J on JH.JOB_ID = J.JOB_ID
INNER JOIN hr.departments D on JH.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY E.EMAIL, `Nome completo`, Departamento, Cargo
HAVING E.EMAIL = email_emp
ORDER BY Departamento, Cargo;
END $$
