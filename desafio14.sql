SELECT 
    C.Country AS 'País'
FROM
    w3schools.customers AS C
        JOIN
    w3schools.suppliers AS S ON S.Country <> C.Country
GROUP BY C.Country
ORDER BY C.Country
LIMIT 5
