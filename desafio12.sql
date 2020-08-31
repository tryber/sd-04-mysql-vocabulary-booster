-- requisito 12

-- E1 e E2 para coluna employees na tabela hr
-- Conctena primeiro e sobrenome renomeando NomCompFuncio 1 e 2
-- Renomeia coluna phone_number e salary para TefFuncio/salarFuncio 1 e 2
-- onde (where) as colunas job_id na tabelas E1 e E2 forem iguais
-- E (and) NomCompFuncio 1 e 2 forem diferentes
-- Ordena NomCompFuncio 1 e 2 ASC
SELECT
CONCAT(E1.first_name, ' ', E1.last_name) AS 'Nome completo funcionário 1',
E1.salary AS 'Salário funcionário 1',
E1.phone_number AS 'Telefone funcionário 1',
CONCAT(E2.first_name, ' ', E2.last_name) AS 'Nome completo funcionário 2',
E2.salary AS 'Salário funcionário 2',
E2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS E1,
hr.employees AS E2
WHERE E1.job_id = E2.job_id AND CONCAT(E1.first_name, ' ', E1.last_name) <> CONCAT(E2.first_name, ' ', E2.last_name)
ORDER BY `Nome completo funcionário 1` ASC,
`Nome completo funcionário 2` ASC;
