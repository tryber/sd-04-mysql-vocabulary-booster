SELECT h.country_name AS País,
IF (r.region_name = 'Europe','incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS h
INNER JOIN hr.regions as r
ON h.REGION_ID = r.REGION_ID
ORDER BY País;
