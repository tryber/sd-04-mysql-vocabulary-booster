USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade INT;
    SELECT COUNT(E.EMAIL)
    FROM hr.employees AS E
    JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    WHERE E.EMAIL = email INTO quantidade;
    RETURN quantidade;
END $$

DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
