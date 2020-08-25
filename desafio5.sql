-- -Desafio 5
-- Usando o banco hr como referência, queremos exibir informações sobre os cargos cadastrados nesse banco em um formato mais próximo da realidade brasileira.
-- Considerando que os salários máximo e mínimo de um cargo são salários anuais, crie uma query que exiba quatro colunas:
-- 1 - A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
-- 2 - A segunda coluna deve possuir o alias "Variação Salarial" e exibir a diferença entre os salários máximo e mínimo daquele cargo.
-- 3 - A terceira coluna deve possuir o alias "Média mínima mensal" e exibir a média mínima mensal daquele cargo.
-- Arredonde a média com uma precisão de duas casas decimais.
-- 4 - A quarta coluna deve possuir o alias "Média máxima mensal" e exibir a média máxima mensal daquele cargo.
-- Arredonde a média com uma precisão de duas casas decimais.
-- Os resultados devem estar ordenados pela variação salarial em ordem crescente. Em caso de empate na variação,
-- os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.
-- SELECT * FROM hr.jobs;
SELECT job_title AS `Cargo`, max_salary - min_salary AS `Variação Salarial`,
ROUND((min_salary/12), 2) AS `Média mínima mensal`, ROUND((max_salary/12), 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial`, `Cargo`;
