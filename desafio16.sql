SET GLOBAL log_bin_trust_function_creators = 1;

USE hr;
DELIMITER $$

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario$$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT
BEGIN
    DECLARE count INT;
    SELECT COUNT(*)
		FROM hr.job_history AS jh
		INNER JOIN hr.employees AS em ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
		WHERE em.email = email
		INTO count;
    RETURN count;
END $$

DELIMITER ;
