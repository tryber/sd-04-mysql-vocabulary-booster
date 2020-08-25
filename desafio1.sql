SELECT C.COUNTRY_NAME País, IF(C.REGION_ID = 1,'incluído','não incluído') 'Status Inclusão' 
FROM hr.countries C
INNER JOIN hr.regions R on C.REGION_ID = R.REGION_ID
ORDER BY C.COUNTRY_NAME;
