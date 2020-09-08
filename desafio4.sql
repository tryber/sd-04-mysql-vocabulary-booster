select j.JOB_TITLE as `Cargo`, ROUND(AVG(SALARY), 2) as `Média salarial`,
  case
    when ROUND(AVG(SALARY), 2) >= 2000 and ROUND(AVG(SALARY), 2) <= 5800 then 'Júnior'
    when ROUND(AVG(SALARY), 2) >= 5801 and ROUND(AVG(SALARY), 2) <= 7500 then 'Pleno'
    when ROUND(AVG(SALARY), 2) >= 7501 and ROUND(AVG(SALARY), 2) <= 10500 then 'Sênior'
    when ROUND(AVG(SALARY), 2) > 10500 then 'CEO'
  end as `Senioridade` 
from hr.employees as e
inner join jobs as j on e.JOB_ID = j.JOB_ID
group by `Cargo` 
order by `Média salarial` asc, `Cargo` asc;
