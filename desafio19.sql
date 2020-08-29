USE hr;

DELIMITER $$

DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
	SELECT
	  CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
	  de.department_name AS Departamento,
	  jo.job_title AS Cargo
	FROM hr.job_history AS jh
	INNER JOIN hr.employees AS em ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
	INNER JOIN hr.departments AS de ON de.DEPARTMENT_ID = jh.DEPARTMENT_ID
	INNER JOIN hr.jobs AS jo ON jo.JOB_ID = jh.JOB_ID
	WHERE em.email = email
	ORDER BY Departamento, Cargo;
END $$

DELIMITER ;
