SELECT 
    ContactName AS `Nome`,
    Country AS `País`,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS cm
        WHERE
            cm.Country = cs.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS cs,
    w3schools.customers AS cm
ORDER BY ContactName;
