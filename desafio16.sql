USE hr;

DELIMITER $ $ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100)) RETURNS INT READS SQL DATA BEGIN DECLARE historico INT;

SELECT
    COUNT(*) INTO historico
FROM
    hr.employees e
    INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE (email);

RETURN historico;

END $ $ DELIMITER;
