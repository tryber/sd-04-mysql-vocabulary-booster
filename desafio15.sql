USE `hr`;
DROP PROCEDURE IF EXISTS `buscar_media_por_cargo`;

DELIMITER $$
USE `hr`$$
CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(50))
BEGIN
SELECT 
    ROUND(AVG(salary), 2) AS 'Média salarial'
FROM
    hr.employees e
WHERE
    nome_do_cargo IN (SELECT 
            j.JOB_TITLE
        FROM
            hr.jobs j
        WHERE
            j.JOB_ID = e.JOB_ID)
GROUP BY e.JOB_ID;
END$$

DELIMITER ;
