-- Desafio 6
-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas. Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira coluna deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente. Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.
SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME) AS `NOME COMPLETO`,
j.JOB_TITLE as Cargo,
h.START_DATE as `Data de início do cargo`,
d.DEPARTMENT_NAME as Departamento
FROM  hr.job_history as h
INNER JOIN hr.jobs as j ON h.JOB_ID = j.JOB_ID
INNER JOIN hr.employees as e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.departments as d ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `NOME COMPLETO` desc, Cargo;
