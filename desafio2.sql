select job_title as Cargo,
case
when max_salary >= 5000 and max_salary<= 10000  then 'Baixo'
when max_salary >= 10001 and max_salary<= 20000  then 'Médio'
when max_salary >= 20001 and max_salary<= 30000  then 'Alto'
else 'Altíssimo'
end as 'Nível'
from jobs order by job_title;
