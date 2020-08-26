use hr;
delimiter $$

create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
returns int reads sql data
begin
declare qtd_pessoas_contratadas int;
select count(*) 
from hr.employees as e
where month(e.hire_date) = mes and year(e.hire_date) = ano
into qtd_pessoas_contratadas;
return qtd_pessoas_contratadas;
end $$

delimiter ;

select exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6,1987);
