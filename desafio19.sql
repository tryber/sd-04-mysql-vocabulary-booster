USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN MAIL VARCHAR(100))
BEGIN
SELECT
    (SELECT
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID) AS `Nome completo`,
    (SELECT
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID) AS `Departamento`,
    (SELECT
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            job_history.JOB_ID = jobs.JOB_ID) AS `Cargo`
FROM
    hr.job_history
WHERE
    EMPLOYEE_ID = (SELECT
            EMPLOYEE_ID
        FROM
            hr.employees
        WHERE
            EMAIL = MAIL)
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
