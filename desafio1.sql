SELECT c.COUNTRY_NAME AS 'País', IF(r.REGION_ID = 1,'Incluído','Não incluido') AS 'Status Inclusão' FROM hr.countries AS c
INNER JOIN hr.regions AS r
WHERE c.REGION_ID = r.REGION_ID;
