select jobs.job_title as Cargo,
case
	  when (jobs.max_salary >= 5000  and jobs.max_salary <= 10000) then"Baixo" 
    when (jobs.max_salary >= 1001 and jobs.max_salary <= 20000) then"Médio"
    when (jobs.max_salary >= 20001 and jobs.max_salary <= 30000) then"Alto"
    when (jobs.max_salary >= 3001 ) then"Altíssimo" 
end as Nível
from jobs
order by jobs.job_title;

-- if (jobs.max_salary >= 5000 and jobs.max_salary <= 10000,"Baixo","") as Nível,
-- if(jobs.max_salary >= 10001 and jobs.max_salary <= 20000, "Médio","")as Nível,
-- if(jobs.max_salary >= 20001 and jobs.max_salary <= 30000, "Alto","") as Nível,
-- if(jobs.max_salary > 30001, "Altíssimo","") as Nível

/*Com base em todos os cargos presentes, queremos categorizar o nível de remuneração de cada cargo. 
Utilizando o banco hr como referência, seu relatório deve possuir as seguintes colunas:
A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
A segunda coluna deve possuir o alias "Nível" e exibir o nível de remuneração 
do cargo com base no seu salário máximo, categorizando os níveis de remuneração da seguinte forma:
Salário máximo entre 5000 e 10000 -> Baixo
Salário máximo entre 10001 e 20000 -> Médio
Salário máximo entre 20001 e 30000 -> Alto
Salário máximo acima de 30000 -> Altíssimo
Os resultados devem estar ordenados pelo nome do cargo em ordem alfabética.*/
