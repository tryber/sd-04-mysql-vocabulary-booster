USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN var VARCHAR(200))
BEGIN
  SELECT ROUND(AVG(SALARY),2) AS 'Média salarial' from employees AS e
  INNER JOIN jobs AS j ON e.JOB_ID = j.JOB_ID
  WHERE JOB_TITLE LIKE CONCAT('%',var, '%')
  GROUP BY JOB_TITLE;
END $$

DELIMITER ;
