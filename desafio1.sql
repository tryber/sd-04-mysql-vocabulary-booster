SELECT country_name AS "País", if(region_name="Europe", "incluído", "não incluído") as "Status Inclusão"
FROM hr.countries as c INNER JOIN hr.regions as r
ON c.region_id = r.region_id
ORDER BY country_name;
