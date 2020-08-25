SELECT upper(concat(e.first_name, ' ', e.last_name)) as 'Nome completo',
h.start_date as 'Data de início do cargo', e.salary as 'Salario'
FROM hr.employees as e
INNER JOIN hr.job_history as h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
Where month(h.start_date) < 4
ORDER BY concat(e.first_name, ' ', e.last_name), h.start_date;
