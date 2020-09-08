use hr;
DELIMITER $$

create procedure buscar_media_por_cargo(in cargo varchar(300))
begin
select round(avg(e.salary), 2) `Média salarial`
from hr.jobs j, hr.employees e
where j.job_id = e.job_id and j.job_title = cargo;
end $$ DELIMITER ;
