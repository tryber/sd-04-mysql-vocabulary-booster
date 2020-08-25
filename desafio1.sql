-- Requisito 1

-- Seleciona coluna country_name e nomeia para País
-- (IF) verifica se region_id = 1 => Europe, se true=incluído, false=não incluído
-- renomeia coluna region_id por Status Inclusão e coloca resultado booleano
-- Verifica-se na tabela hr.countries e ordena por países ascedentes
SELECT country_name AS País,
IF(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries 
ORDER BY País;
