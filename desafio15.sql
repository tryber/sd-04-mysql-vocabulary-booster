DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
    FROM hr.employees AS e
    INNER JOIN hr.jobs AS j ON e.job_id = j.JOB_ID
    WHERE j.JOB_TITLE = Cargo;
END $$

DELIMITER ;

-- Chamando procedure:

CALL buscar_media_por_cargo('Programmer');
