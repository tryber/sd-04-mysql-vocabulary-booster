SELECT c.country_name AS 'País', IF(r.region_name = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'
FROM hr.countries AS c
JOIN hr.regions AS r
  ON r.region_id = c.region_id;
