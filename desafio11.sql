SELECT 
    ContactName AS Nome,
    Country AS País,
    (SELECT 
            COUNT(Country) - 1
        FROM
            customers
        WHERE
            País = Country
        GROUP BY country) AS 'Número de compatriotas'
FROM
    customers
ORDER BY ContactName;
