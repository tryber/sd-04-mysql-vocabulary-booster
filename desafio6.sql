select concat(employees.first_name," ",employees.last_name) as "Nome completo",
jobs.job_title as Cargo,
job_history.start_date as "Data de início do cargo",
departments.department_name as "Departamento"
from employees
inner join job_history on employees.employee_id = job_history.employee_id
inner join jobs on jobs.job_id = job_history.job_id
inner join departments on departments.department_id = job_history.department_id
order by concat(employees.first_name," ",employees.last_name) desc, Cargo;
/* Faça um relatório que mostra o histórico de cargos das pessoas empregadas. 
Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:
A primeira coluna deve possuir o alias "Nome completo" e exibir o nome 
completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
A terceira coluna deve possuir o alias "Data de início do cargo" 
e exibir a data que a pessoa iniciou o cargo.
A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento 
em que a pessoa exerceu seu cargo.
Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente. 
Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.*/
