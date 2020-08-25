SELECT concat(e.first_name, ' ', e.last_name) as 'Nome completo',
j.job_title as Cargo,
h.start_date as 'Data de início do cargo',
d.department_name as 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID 
INNER JOIN hr.job_history as h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments as d ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
order by concat(e.first_name, ' ', e.last_name) desc, Cargo;
