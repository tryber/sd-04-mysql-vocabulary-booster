USE hr;
DELIMITER $$
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(jh.JOB_ID) INTO total
FROM hr.job_history as jh
JOIN hr.employees as employees
ON jh.EMPLOYEE_ID = employees.EMPLOYEE_ID AND email = employees.EMAIL;
RETURN total;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR')