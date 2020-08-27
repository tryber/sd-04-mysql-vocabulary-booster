select upper(concat(e.first_name, ' ', e.last_name)) "Nome completo",
h.start_date 'Data de início',
e.salary 'Salário'
from hr.employees e
inner join hr.job_history h on e.EMPLOYEE_ID = h.EMPLOYEE_ID
inner join hr.jobs j on j.JOB_ID = h.JOB_ID /* ligando as chaves estrangeiras */
inner join hr.departments d on d.DEPARTMENT_ID = h.DEPARTMENT_ID
having month(h.start_date) in(01,02,03)
order by concat(e.first_name, ' ', e.last_name), h.start_date; 
