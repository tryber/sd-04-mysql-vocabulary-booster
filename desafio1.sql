SELECT t1.COUNTRY_NAME AS 'País', 
IF(t2.REGION_ID = 1, 'incluído', 'não incluído' ) AS 'Status Inclusão'
FROM hr.regions AS t2
INNER JOIN hr.countries AS t1
GROUP BY t1.COUNTRY_NAME
ORDER BY t1.COUNTRY_NAME;
