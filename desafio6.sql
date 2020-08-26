select concat(e.first_name," ",e.last_name) as 'Nome completo', j.job_title, jh.START_DATE as 'Data de início do cargo', d.DEPARTMENT_NAME as 'Departamento' 
from jobs j, employees e, departments d, job_history jh
where e.JOB_ID = j.JOB_ID and e.DEPARTMENT_ID = d.DEPARTMENT_ID and e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by 1 desc, 2;
