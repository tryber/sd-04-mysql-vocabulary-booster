-- DESAFIO 1

SELECT COUNTRY_NAME AS País, IF(region_id = 1, 'Incluído', 'Não incluído') as 'Status inclusão'
FROM hr.countries order by COUNTRY_NAME;
