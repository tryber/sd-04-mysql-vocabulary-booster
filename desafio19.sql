-- select * from hr.jobs; 
-- select * from hr.job_history; 
-- selct * from hr.employees;
-- select * from hr.departments;
USE hr;

DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(100))
BEGIN
    SELECT
      CONCAT(e.FIRsT_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
      d.DEPARTMENT_NAME AS `Departamento`,
      j.JOB_TITLE AS Cargo
    FROM hr.job_history AS jh
      JOIN hr.employees AS e
        ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
      JOIN hr.departments AS d
        ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
      JOIN hr.jobs AS j
        ON j.JOB_ID = jh.JOB_ID AND e.EMAIL = employeeEmail
    ORDER BY j.JOB_TITLE ASC;
END $$

DELIMITER ;

-- Chamando procedure:

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
