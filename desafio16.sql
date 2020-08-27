delimiter $$
create procedure buscar_quantidade_de_empregos_por_funcionario(in func_email varchar(100))
begin
select count(EMPLOYEE_ID) as 'quantidade de empregos presentes em seu histórico' from job_history where EMPLOYEE_ID in (select EMPLOYEE_ID from employees where EMAIL = func_email);
end $$
delimiter ;
call buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
