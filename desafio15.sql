CREATE PROCEDURE buscar_media_por_cargo(IN cargo_funcionario VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.salary), 2) 'Média salarial'
FROM hr.jobs J 
INNER JOIN hr.employees E on E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE 
HAVING J.JOB_TITLE = cargo_funcionario;
END $$
