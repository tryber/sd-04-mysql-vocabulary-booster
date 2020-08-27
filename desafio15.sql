USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS `Média salarial`
FROM hr.employees AS em
INNER JOIN hr.jobs AS jb
ON em.JOB_ID=jb.JOB_ID
WHERE jb.JOB_TITLE=cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
