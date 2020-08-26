-- DESAFIO 16

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_empregos INT;
SELECT COUNT(JH.employee_id)
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.employee_id = E.employee_id
WHERE E.email = email_func
INTO qnt_empregos;
RETURN qnt_empregos;
END $$

DELIMITER ;

-- DROP FUNCTION buscar_quantidade_de_empregos_por_funcionario;
-- SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
