USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(cargo VARCHAR(20))
BEGIN
SELECT
ROUND(AVG(SALARY),2) AS `Média salarial`
FROM hr.employees
GROUP BY JOB_ID
HAVING cargo in (
select
JOB_TITLE
from hr.jobs
where jobs.JOB_ID = employees.JOB_ID
);
END $$

DELIMITER ;

call buscar_media_por_cargo('Programmer');
