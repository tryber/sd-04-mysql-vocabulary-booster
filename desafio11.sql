SELECT 
    C.ContactName AS `Nome`,
    C.Country AS `País`,
    (SELECT 
            COUNT(Ccomp.Country)
        FROM
            w3schools.customers AS Ccomp
        WHERE
            Ccomp.Country = C.Country
                AND Ccomp.ContactName <> C.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers AS C
ORDER BY C.ContactName;
