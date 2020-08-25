SELECT 
ct.COUNTRY_NAME AS País, 
IF(ct.REGION_ID = 1, "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries ct;
