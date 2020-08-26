USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos INT;
SELECT COUNT(JH.EMPLOYEE_ID)
FROM hr.job_history AS JH
JOIN hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO empregos;
RETURN empregos;
END $$

DELIMITER ;
