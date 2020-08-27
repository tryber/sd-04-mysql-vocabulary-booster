DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(100))
BEGIN
select round(avg(salary), 2) as "Média salarial" from employees where JOB_ID in (select JOB_ID from jobs where JOB_TITLE = cargo);
END $$
DELIMITER ;
call buscar_media_por_cargo('Programmer');
