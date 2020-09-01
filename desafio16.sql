DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(150))
RETURNS INT
BEGIN
    DECLARE total_empregos INT;

    SELECT COUNT(e.job_id) INTO total_empregos
    FROM employees AS e
    INNER JOIN job_history AS jh on e.employee_id = jh.employee_id
    WHERE e.email = email;

    RETURN total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS 'total_empregos';
