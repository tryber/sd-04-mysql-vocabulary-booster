/*-- select job_title as Cargo,round(avg(employees.salary),2) as "Média salarial",
-- case
-- when ((max_salary - min_salary) >= 2000  and (max_salary - min_salary) <= 5800) then"Júnior" 
-- when ((max_salary - min_salary) >= 5801 and (max_salary - min_salary) <= 7500) then"Pleno"
-- when ((max_salary - min_salary) >= 7501 and (max_salary - min_salary) <= 10500) then"Senior"
-- when ((max_salary - min_salary) > 10500 ) then"CEO" 
-- end as Senioridade
-- from jobs
-- inner join employees
-- order by (max_salary - min_salary),job_title;*/

select jobs.job_title as Cargo,(jobs.max_salary - jobs.min_salary) as "Variação Salarial",
round((jobs.min_salary /12),2 ) as "Média mínima mensal",
round((jobs.max_salary /12),2 ) as "Média máxima mensal"
from jobs
order by (max_salary - min_salary), Cargo;

/*Usando o banco hr como referência, queremos exibir informações sobre os cargos cadastrados 
nesse banco em um formato mais próximo da realidade brasileira. Considerando que os 
salários máximo e mínimo de um cargo são salários anuais, crie uma query que exiba quatro colunas:
A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
A segunda coluna deve possuir o alias "Variação Salarial" e exibir a diferença 
entre os salários máximo e mínimo daquele cargo.
A terceira coluna deve possuir o alias "Média mínima mensal" e exibir a média mínima mensal 
daquele cargo. Arredonde a média com uma precisão de duas casas decimais.
A quarta coluna deve possuir o alias "Média máxima mensal" e exibir a média máxima mensal
daquele cargo. Arredonde a média com uma precisão de duas casas decimais.
Os resultados devem estar ordenados pela variação salarial em ordem crescente. 
Em caso de empate na variação, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.*/
