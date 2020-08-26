select jobs.job_title as Cargo, round(avg(employees.salary),2) as "Média salarial",
case
when (avg(employees.salary) >= 2000  and avg(employees.salary) <= 5800) then"Júnior" 
when (avg(employees.salary) >= 5801 and avg(employees.salary) <= 7500) then"Pleno"
when (avg(employees.salary) >= 7501 and avg(employees.salary) <= 10500) then"Sênior"
when (avg(employees.salary) > 10500 ) then"CEO" 
end as Senioridade
from jobs
inner join employees
on jobs.job_id = employees.job_id
group by jobs.job_title
order by avg(employees.salary), jobs.job_title;
/*Usando o banco hr como referência, queremos extrair informações a respeito dos salários das pessoas empregadas. 
Para isso, crie uma query que exiba três colunas:
A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
A segunda coluna deve possuir o alias "Média salarial" e exibir 
a média dos salários das pessoas empregadas que possuem o cargo em questão.
A terceira coluna deve possuir o alias "Senioridade" e categorizar o nível 
de senioridade do cargo com base na média salarial, da seguinte forma:
Média salarial entre 2000 - 5800 -> Júnior
Média salarial entre 5801 - 7500 -> Pleno
Média salarial entre 7501 - 10500 -> Sênior
Média salarial acima de 10500 -> CEO
Devido ao fato de a média salarial ser um valor monetário, 
sempre que for fazer uso da média salarial, é preciso arredondá-la usando apenas duas casas decimais.
Os resultados devem estar ordenados pela média salarial em ordem crescente. 
Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.*/
