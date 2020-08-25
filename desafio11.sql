SELECT names.ContactName AS `Nome`, names.Country AS `País`,
    COUNT(numbers.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers AS names,
    w3schools.customers AS numbers
WHERE
    names.ContactName <> numbers.ContactName
        AND names.Country = numbers.Country
GROUP BY (names.CustomerID)
ORDER BY `Nome`;
