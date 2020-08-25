-- Desafio 5
-- Usando o banco hr como referência, queremos exibir informações sobre os cargos cadastrados nesse banco em um formato mais próximo da realidade brasileira. Considerando que os salários máximo e mínimo de um cargo são salários anuais, crie uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda coluna deve possuir o alias "Variação Salarial" e exibir a diferença entre os salários máximo e mínimo daquele cargo.
-- A terceira coluna deve possuir o alias "Média mínima mensal" e exibir a média mínima mensal daquele cargo. Arredonde a média com uma precisão de duas casas decimais.
-- A quarta coluna deve possuir o alias "Média máxima mensal" e exibir a média máxima mensal daquele cargo. Arredonde a média com uma precisão de duas casas decimais.
-- Os resultados devem estar ordenados pela variação salarial em ordem crescente. Em caso de empate na variação, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.
SELECT JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
ROUND(MIN_SALARY/12 ,2) AS `Média mpinima mensal`,
ROUND(MAX_SALARY/12, 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial`, Cargo;
