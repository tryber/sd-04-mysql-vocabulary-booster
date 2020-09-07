SELECT 
    cust.ContactName AS 'Nome',
    cust.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS subCust
        WHERE
            subCust.CustomerID <> cust.CustomerID
                AND subCust.Country = cust.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS cust
HAVING `Número de compatriotas` NOT IN (0)
ORDER BY Nome;
