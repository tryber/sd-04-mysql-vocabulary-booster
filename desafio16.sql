DROP PROCEDURE IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario (IN email VARCHAR(150))
BEGIN
    SELECT COUNT(e.job_id) AS 'total_empregos'
    FROM employees AS e
    INNER JOIN job_history AS jh on e.employee_id = jh.employee_id
    WHERE e.email = email;
END $$

DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
