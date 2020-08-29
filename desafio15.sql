USE hr;
DELIMITER $$

DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN SELECT ROUND(AVG(em.SALARY), 2) AS 'Média salarial' FROM hr.employees AS em INNER JOIN hr.jobs AS jo ON (em.JOB_ID = jo.JOB_ID) WHERE job_title = jo.JOB_TITLE;
END $$

DELIMITER ;
