select j.job_title as Cargo, round(avg(e.salary), 2) as 'Média salarial',
	case
		when avg(e.salary) >= 2000 and avg(e.salary) <= 5800 then 'Júnior'
        when avg(e.salary) >= 5801 and avg(e.salary) <= 7500 then 'Pleno'
        when avg(e.salary) >= 7501 and avg(e.salary) <= 10500 then 'Sênior'
        else 'CEO'
	end as 'Senioridade'
from jobs j, employees e
where j.job_id = e.job_id
group by j.job_title
order by 2,1;
