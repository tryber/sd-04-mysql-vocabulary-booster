/* Desafio 4
Usando o banco hr como referência, queremos extrair informações a
 respeito dos salários das pessoas empregadas. Para isso, crie uma query que exiba três colunas:
  1. A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
  2. A segunda coluna deve possuir o alias "Média salarial" e exibir a média dos salários
    das pessoas empregadas que possuem o cargo em questão.
  3. A terceira coluna deve possuir o alias "Senioridade" e categorizar o nível de senioridade
    do cargo com base na média salarial, da seguinte forma:
	  Média salarial entre 2000 - 5800 -> Júnior
	  Média salarial entre 5801 - 7500 -> Pleno
	  Média salarial entre 7501 - 10500 -> Sênior
	  Média salarial acima de 10500 -> CEO
Devido ao fato de a média salarial ser um valor monetário, sempre que for fazer uso da média salarial,
 é preciso arredondá-la usando apenas duas casas decimais.
Os resultados devem estar ordenados pela média salarial em ordem crescente.
 Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética. */
select j.JOB_TITLE as `Cargo`, round(avg(SALARY), 2) as `Média salarial`,
  case
    when round(avg(SALARY), 2) >= 2000 and round(avg(SALARY), 2) <= 5800 then 'Júnior'
    when round(avg(SALARY), 2) >= 5801 and round(avg(SALARY), 2) <= 7500 then 'Pleno'
    when round(avg(SALARY), 2) >= 7501 and round(avg(SALARY), 2) <= 10500 then 'Sênior'
    when round(avg(SALARY), 2) > 10500 then 'CEO'
  end as `Senioridade` 
from hr.employees as e
inner join jobs as j on e.JOB_ID = j.JOB_ID
group by `Cargo` 
order by `Média salarial` asc, `Cargo` asc;
