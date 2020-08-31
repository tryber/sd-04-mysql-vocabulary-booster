CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(mail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE expected INT;
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
            Email = mail)
INTO expected;
RETURN expected;
END $$

DELIMITER;
