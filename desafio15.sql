USE hr;
DROP procedure IF EXISTS buscar_media_por_cargo;

DELIMITER $$
USE hr$$
CREATE PROCEDURE `buscar_media_por_cargo`(IN nome_cargo varchar(35))
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) "Média salarial"
FROM hr.employees e
INNER JOIN hr.jobs j 
ON j.JOB_ID = e.JOB_ID
WHERE JOB_TITLE = nome_cargo;
END $$ DELIMITER ;
