-- DESAFIO 15

USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(nome_cargo VARCHAR(300))
BEGIN
-- codigo aqui
SELECT ROUND(AVG(E.salary), 2) AS `Média salarial`
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
WHERE J.job_title = nome_cargo;
END $$

DELIMITER ;

-- DROP PROCEDURE buscar_media_por_cargo;
-- CALL buscar_media_por_cargo('President');