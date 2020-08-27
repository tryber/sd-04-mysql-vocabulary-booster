DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
  IN JOB_TITLE VARCHAR(100),
  OUT media_salarial_cargo DOUBLE
  )

BEGIN
  SELECT ROUND(AVG(emp.SALARY), 2) INTO media_salarial_cargo
  FROM hr.jobs AS job
  INNER JOIN hr.employees AS emp
  ON job.JOB_ID = emp.JOB_ID  

END $$

DELIMITER ;
