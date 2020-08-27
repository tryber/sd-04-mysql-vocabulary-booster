USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(Cargo VARCHAR(30))

BEGIN

SELECT
    ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM
    hr.employees
WHERE
    JOB_ID = (SELECT
            JOB_ID
        FROM
            hr.jobs
        WHERE
            jobs.JOB_TITLE = Cargo)
GROUP BY JOB_ID;

END $$

DELIMITER ;
