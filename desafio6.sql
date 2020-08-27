select concat(e.first_name, ' ', e.last_name) "Nome completo",
j.job_title Cargo,
h.start_date 'Data de início do cargo',
d.department_name 'Departamento'
from hr.employees e
inner join hr.job_history h on e.EMPLOYEE_ID = h.EMPLOYEE_ID
inner join hr.jobs j on j.JOB_ID = h.JOB_ID /* ligando as chaves estrangeiras */
inner join hr.departments d on d.DEPARTMENT_ID = h.DEPARTMENT_ID
order by concat(e.first_name, ' ', e.last_name) desc, d.DEPARTMENT_NAME; 
