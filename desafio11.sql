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
    COUNT(*) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers A,
    w3schools.customers B
WHERE
    A.Country = B.Country
GROUP BY
    A.ContactName
HAVING
    COUNT(A.ContactName) > 1
ORDER BY
    A.ContactName ASC;
