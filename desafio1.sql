SELECT 
    COUNTRY_NAME AS 'País',
    CASE REGION_ID
        WHEN 1 THEN 'incluído'
        WHEN 2 THEN 'não incluído'
        WHEN 3 THEN 'não incluído'
        WHEN 4 THEN 'não incluído'
    END AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY COUNTRY_NAME;
