-- requisito 15

-- cria procedure usando tabela hr por referencia
-- seleciona coluna Salary e renomeia com Média salarial
-- combina as colunas JOB_ID nas tabelas jobs e employees
-- E que Cargo seja igual a coluna JOB_TITLE
-- Ordena o coluna Média salarial e coluna JOB_TITLE
USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(50))
BEGIN SELECT ROUND(AVG(hr.employees.SALARY), 2) AS 'Média salarial'
FROM hr.jobs
INNER JOIN hr.employees ON hr.jobs.JOB_ID = hr.employees.JOB_ID 
AND hr.jobs.JOB_TITLE = cargo
GROUP BY hr.jobs.JOB_TITLE
ORDER BY `Média salarial`, 2), hr.jobs.JOB_TITLE;
END $$ DELIMITER ;
