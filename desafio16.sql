DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(searchEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*)
    FROM hr.employees AS e
    WHERE email = searchEmail INTO total;
    JOIN hr.job_history AS j
    ON e.employee_id = j.employee_id
    RETURN total;
END $$

DELIMITER ;
