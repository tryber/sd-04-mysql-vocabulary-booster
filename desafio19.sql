create procedure exibir_historico_completo_por_funcionario(in email_emp varchar(300))
begin
select concat(e.first_name, ' ', e.last_name) `nome completo`, d.department_name departamento, j.job_title cargo
from hr.employees e 
inner join hr.job_history jh on jh.employee_id = e.employee_id
inner join hr.jobs j on jh.job_id = j.job_id
inner join hr.departments d on jh.department_id = d.department_id
group by e.email, `nome completo`, departamento, cargo
having e.email = email_emp
order by departamento, cargo;
end $$
