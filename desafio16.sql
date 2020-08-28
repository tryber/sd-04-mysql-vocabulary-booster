USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(MAIL VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE RESPONSE INT;
SELECT
    COUNT(EMPLOYEE_ID)
FROM
    hr.job_history
WHERE
    EMPLOYEE_ID = (SELECT
            EMPLOYEE_ID
        FROM
            hr.employees
        WHERE
            EMAIL = MAIL)
INTO RESPONSE ;
RETURN RESPONSE;
END $$

DELIMITER ;
