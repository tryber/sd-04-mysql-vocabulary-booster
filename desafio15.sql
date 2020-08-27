DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nameCargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(emp.SALARY), 2)
  FROM hr.employees AS emp
  INNER JOIN hr.jobs AS job
  ON job.JOB_ID = emp.JOB_ID
  WHERE job.JOB_TITLE = nameCargo

END $$

DELIMITER ;
