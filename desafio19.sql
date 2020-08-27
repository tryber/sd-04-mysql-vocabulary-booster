USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo`,
    dp.DEPARTMENT_NAME AS `Departamento`,
    jo.JOB_TITLE AS `Cargo`
FROM hr.job_history AS jb
INNER JOIN hr.employees AS em
ON jb.EMPLOYEE_ID=em.EMPLOYEE_ID
INNER JOIN hr.departments AS dp
ON jb.DEPARTMENT_ID=dp.DEPARTMENT_ID
INNER JOIN hr.jobs AS jo
ON jb.JOB_ID=jo.JOB_ID
WHERE em.EMAIL=email
ORDER BY `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
