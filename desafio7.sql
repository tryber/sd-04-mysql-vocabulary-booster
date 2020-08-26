select ucase(concat(e.first_name," ",e.last_name)) as 'Nome completo', jh.START_DATE as 'Data de início', salary as Salário 
from employees e, job_history jh 
where e.EMPLOYEE_ID = jh.EMPLOYEE_ID order by 1, 2 ;
