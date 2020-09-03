SELECT
    A.ContactName AS Nome,
    (
        SELECT
            Country
        FROM
            w3schools.customers
        WHERE
            ContactName = A.ContactName
    ) AS País,
    COUNT(B.ContactName) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers A,
    w3schools.customers B
WHERE
    A.Country = B.Country
GROUP BY
    A.ContactName
ORDER BY
    A.ContactName;
