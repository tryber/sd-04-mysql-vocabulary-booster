SELECT co.COUNTRY_NAME AS `País`, IF(reg.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries as co
INNER JOIN hr.regions as reg
ON co.REGION_ID=reg.REGION_ID
ORDER BY co.COUNTRY_NAME;
