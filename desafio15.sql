DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(150))
BEGIN
    SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
    FROM jobs AS j
    INNER JOIN employees AS e on e.job_id = j.job_id
    WHERE j.job_title = cargo;
END $$

DELIMITER ;

-- Execute PROCEDURE

CALL buscar_media_por_cargo('Programmer');
