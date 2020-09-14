USE hr;
DELIMITER $ $ DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
CREATE PROCEDURE buscar_media_por_cargo (IN job VARCHAR(55)) BEGIN
SELECT
  (ROUND(AVG(employees.SALARY), 2)) AS "Média salarial"
FROM
  hr.employees AS employees
  INNER JOIN hr.jobs AS jobs ON (employees.job_id = jobs.job_id)
WHERE
  job = jobs.job_title;
END $ $ DELIMITER;
CALL buscar_media_por_cargo("Programmer")
