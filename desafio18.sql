use hr;
delimter $$
create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
returns int reads sql data
begin
declare qnt_pessoas int;
select count(*) as total from hr.employees
where month(hire_date) = mes and year(hire_date) = ano into qnt_pessoas;
return qnt_pessoas;
end $$
delimiter ;
