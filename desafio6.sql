select concat(e.first_name," ",e.last_name) as 'Nome completo', j.job_title as Cargo, jh.START_DATE as 'Data de início do cargo', d.DEPARTMENT_NAME as 'Departamento' 
from jobs j, employees e, departments d, job_history jh
where j.JOB_ID = jh.JOB_ID and d.DEPARTMENT_ID = jh.DEPARTMENT_ID and e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by 1 desc, 2;
