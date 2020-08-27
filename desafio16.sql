USE hr;

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INTEGER;
    SELECT COUNT(*) FROM hr.employees AS e
      JOIN hr.job_history AS jh
        ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND e.EMAIL = employeeEmail
    INTO total;
    RETURN total;
END $$

DELIMITER ;

-- Chamando Function:

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
