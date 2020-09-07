USE hr;

DELIMITER $ $ CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(100)) BEGIN DECLARE historico INT;

SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome Completo',
    d.DEPARTMENT_NAME 'Departamento',
    j.JOB_TITLE 'Cargo'
FROM
    hr.employees e
    INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    INNER JOIN hr.departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
    INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
WHERE
    e.EMAIL LIKE (email);

END $ $ DELIMITER;
