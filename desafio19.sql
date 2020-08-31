USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_do_funcionario VARCHAR(50))
BEGIN
SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    DEPARTMENT_NAME AS Departamento,
    JOB_TITLE AS Cargo
FROM
    hr.job_history jh
        LEFT JOIN
    hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        LEFT JOIN
    hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
        LEFT JOIN
    hr.jobs j ON j.JOB_ID = jh.JOB_ID
WHERE
    EMAIL = email_do_funcionario
ORDER BY Departamento, `Nome completo`;
END$$
