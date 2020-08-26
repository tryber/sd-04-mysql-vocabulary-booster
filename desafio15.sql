USE hr;
DELIMITER $$

DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(35)) BEGIN
SELECT
  ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM
  hr.employees AS e
  INNER JOIN hr.jobs AS j ON (e.job_id = j.job_id)
WHERE
  cargo = j.job_title;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
