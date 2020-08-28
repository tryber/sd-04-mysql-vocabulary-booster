USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN 
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.jobs AS j
JOIN hr.employees AS e
ON j.job_id = e.job_id AND j.job_title = cargo
GROUP BY j.job_title
ORDER BY ROUND(AVG(e.salary), 2), j.job_title;
END $$

DELIMITER ;
