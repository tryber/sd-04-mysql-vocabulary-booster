
--    SELECT 
--     CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
--     D.DEPARTMENT_NAME AS 'Departamento',
--     J.JOB_TITLE AS 'Cargo'
-- FROM
--     hr.employees AS E INNER JOIN hr.job_history AS H ON E.EMPLOYEE_ID = H.DEPARTMENT_ID
--     INNER JOIN hr.departments AS D ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
--     INNER JOIN hr.jobs AS J ON H.JOB_ID = J.JOB_ID
--     ORDER BY `Departamento`,`Cargo`;
    
    
    USE hr
    DELIMITER //
    
    CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailFunc VARCHAR(25))
    BEGIN
    SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
    D.DEPARTMENT_NAME AS 'Departamento',
    J.JOB_TITLE AS 'Cargo'
FROM
    hr.employees AS E INNER JOIN hr.job_history AS H ON E.EMPLOYEE_ID = H.DEPARTMENT_ID
    INNER JOIN hr.departments AS D ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
    INNER JOIN hr.jobs AS J ON H.JOB_ID = J.JOB_ID
    WHERE E.EMAIL = emailFunc
    ORDER BY `Departamento`,`Cargo`;
    END //
    
    DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
