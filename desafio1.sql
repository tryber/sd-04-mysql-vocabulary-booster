SELECT C.COUNTRY_NAME País, 
IF(C.REGION_ID = 1,'incluído','não incluído') 'Status Inclusão' 
FROM countries C;
