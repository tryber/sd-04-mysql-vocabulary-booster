DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20)) BEGIN
  SELECT
    ROUND(AVG(e.SALARY), 2) `Média salarial`
  FROM
    hr.employees e
  INNER JOIN
    hr.jobs j ON
    e.JOB_ID = j.JOB_ID AND j.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
