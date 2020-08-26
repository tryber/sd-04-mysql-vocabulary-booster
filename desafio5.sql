-- requisito 5

-- Seleciona coluna job_title e renomeia para Cargo
-- A diferença (-) das colunas max_salary e min_salary renomeia para Variação Salarial
-- A 'Média mínima mensal é a divisão de min_salary pro 12 meses arrendotando 
-- para duas casa decimais (round), mesma coisa para 'Média máxima mensal'
-- Ordena por variação Salarial e depois Cargo
SELECT job_title AS 'Cargo',
(max_salary - min_salary) AS `Variação Salarial`,
ROUND(min_salary/12, 2) AS "Média mínima mensal",
ROUND(max_salary/12, 2) AS "Média máxima mensal"
FROM hr.jobs
ORDER BY `Variação Salarial` ASC, Cargo;
