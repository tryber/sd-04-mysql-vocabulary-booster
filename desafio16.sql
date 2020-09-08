delimiter $$
create function buscar_quantidade_de_empregos_por_funcionario(func_email varchar(100))
returns int READS sql data
begin
DECLARE qt_func INT;
select count(EMPLOYEE_ID) from job_history where EMPLOYEE_ID in (select EMPLOYEE_ID from employees where EMAIL = func_email)
into qt_func;
return qt_func;
end $$
delimiter ;
