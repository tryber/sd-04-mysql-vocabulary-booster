SELECT C.COUNTRY_NAME País, IF(C.REGION_ID = 1,'incluído','não incluído') 'Status Inclusão' 
FROM hr.countries C
ORDER BY C.COUNTRY_NAME;
