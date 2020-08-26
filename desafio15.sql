DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
FROM hr.jobs AS j
  JOIN hr.employees AS e ON e.job_id = j.job_id
WHERE j.job_title = 'Programmer'
GROUP BY e.job_id
END $$

DELIMITER ;
