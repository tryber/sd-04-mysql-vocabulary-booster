select concat(c1.First_Name, ' ', c1.Last_Name) 'Nome completo funcionário 1',
c1.salary 'Salário funcionário 1', 
c1.phone_number 'Telefone funcionário 1',
concat(c2.First_Name, ' ', c2.Last_Name) 'Nome completo funcionário 2',
c2.salary 'Salário funcionário 2',
c2.phone_number 'Telefone funcionário 2'
from hr.employees c1
inner join hr.employees c2 on c1.JOB_ID = c2.JOB_ID and c1.EMPLOYEE_ID <> c2.EMPLOYEE_ID
order by concat(c1.First_Name, ' ', c1.Last_Name), concat(c2.First_Name, ' ', c2.Last_Name);
