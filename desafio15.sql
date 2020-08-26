CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(200))
BEGIN
  SELECT ROUND(AVG(Emp.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS Emp
  INNER JOIN hr.jobs AS Jobs
  ON Emp.JOB_ID = Jobs.JOB_ID
  WHERE Jobs.JOB_TITLE = nome_do_cargo;
END $$
