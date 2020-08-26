select concat(e.first_name," ",e.last_name) as 'Nome completo funcionário 1', e.salary as 'Salário funcionário 1', e.phone_number as 'Telefone funcionário 1',
concat(ee.first_name," ",ee.last_name) as 'Nome completo funcionário 2', ee.salary as 'Salário funcionário 2', ee.phone_number as 'Telefone funcionário 2'
from employees e, employees ee
where e.JOB_ID = ee.JOB_ID and e.EMPLOYEE_ID <> ee.EMPLOYEE_ID
order by 1,4;
