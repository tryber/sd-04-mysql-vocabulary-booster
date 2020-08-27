-- Desafio 1
-- Foi decidido que vamos continuar atendendo apenas à região "Europe". Sendo assim, usando o banco hr como referência, precisamos de um relatório que deve apresentar duas colunas:
-- A primeira coluna deve possuir o alias "País" e exibir o nome do país.
-- A segunda coluna deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.
-- Os resultados devem estar ordenados pelo nome do país em ordem alfabética.
-- Sintaxe:
-- SELECT IF(condicao, valor_se_verdadeiro, valor_se_falso);
SELECT
  c.COUNTRY_NAME AS País,
  IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS "Status Inclusão"
FROM hr.countries AS c
JOIN hr.regions AS r ON c.REGION_ID = r.REGION_ID
ORDER BY País;
