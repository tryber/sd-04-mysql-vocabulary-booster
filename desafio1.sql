SELECT 
    COUNTRY_NAME AS 'País',
    (SELECT 
            IF(REGION_NAME = 'Europe',
                    'incluído',
                    'não incluído')
        FROM
            hr.regions
        WHERE
            regions.REGION_ID = hr.countries.REGION_ID) AS 'Status Inclusão'
FROM
    hr.countries
