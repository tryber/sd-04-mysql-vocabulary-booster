select upper(concat(employees.first_name," ",employees.last_name))  as "Nome completo",
job_history.start_date as "Data de início",
employees.salary as "Salário" 
from employees
inner join job_history 
on job_history.employee_id = employees.employee_id
having month(job_history.start_date) in (01,02,03)
order by concat(employees.first_name," ",employees.last_name), job_history.start_date;

/*Faça um relatório que mostra o histórico de cargos das pessoas empregadas 
que iniciaram seus cargos nos meses de janeiro, fevereiro ou março. 
Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:
A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada 
em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.
Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. 
Em caso de empate no nome completo, ordene os resultados pela data de início que a 
pessoa iniciou seu cargo, em ordem crescente.*/
