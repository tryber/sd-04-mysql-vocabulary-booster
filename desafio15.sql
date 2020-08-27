/* Desafio 15
Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e
  em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo.
  Usando o banco hr como referência, sua procedure deve retornar somente uma coluna,
  com o alias "Média salarial", que mostra a média salarial arredondada para duas casas decimais.
Confirme a execução correta da procedure, chamando-a e passando o nome de cargo igual a "Programmer":
CALL buscar_media_por_cargo('Programmer');
Chamando-a dessa forma, sua procedure deve retornar 5760.00 como média salarial
  para pessoas que ocupam o cargo "Programmer". */
drop procedure buscar_media_por_cargo;
delimiter $$
create procedure buscar_media_por_cargo(in cargo varchar(35), out media_salaria decimal(8,2)) begin
  select avg(SALARY) from hr.employees;
end $$ delimiter ;

select avg(SALARY) from hr.employees;

select
  j.JOB_TITLE,
  e1.JOB_ID,
  round(avg(e1.SALARY),2) as `Média salarial`
from hr.employees as e1, hr.employees as e2
inner join hr.jobs as j on j.JOB_ID = e2.JOB_ID
where e1.JOB_ID = e2.JOB_ID
group by e1.JOB_ID;

select * from hr.employees;
select * from hr.jobs;

	