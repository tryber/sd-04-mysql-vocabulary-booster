SELECT t1.COUNTRY_NAME AS 'País', 
IF(t2.REGION_ID = 1, 'incluido', 'não incluido' ) AS 'Status Inclusão'
FROM hr.regions AS t2
INNER JOIN hr.countries AS t1
ORDER BY t1.COUNTRY_NAME;
