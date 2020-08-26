-- Sabemos que tanto as pessoas consumidoras quanto as empresas fornecedoras de produtos
-- possuem países cadastrados. Logo, considerando o conjunto formado por essas pessoas e empresas,
-- queremos saber quais são os cinco primeiros países distintos, em ordem alfabética,
-- presentes nesse conjunto. Usando o banco w3schools como referência, monte uma query que exiba uma coluna, com o alias "País",
-- que deve mostrar o nome do país.

SELECT Country AS 'País' FROM w3schools.customers UNION SELECT Country FROM w3schools.suppliers ORDER BY `País` LIMIT 5;


-- O operador UNION, por default, executa o equivalente a um SELECT DISTINCT no result set final.
-- Em outras palavras, ele combina o resultado de execução das duas queries e então executa um SELECT DISTINCT
-- a fim de eliminar as linhas duplicadas. Este processo é executado mesmo que não hajam registros duplicados.
