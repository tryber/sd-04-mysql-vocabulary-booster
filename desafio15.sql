USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(50))

BEGIN

SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média Salarial'
FROM hr.employees AS emp
JOIN hr.jobs AS jobs
ON jobs.JOB_ID = emp.JOB_ID
WHERE jobs.JOB_TITLE = jobTitle
GROUP BY jobs.JOB_TITLE;

END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
