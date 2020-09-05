USE hr;
DELIMITER $$ 
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(20))
BEGIN
SELECT ROUND(AVG(employees.SALARY), 2) AS `Média salarial`
FROM hr.employees as employees
JOIN hr.jobs as jobs
ON employees.JOB_ID = jobs.JOB_ID AND Cargo = jobs.JOB_TITLE;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');