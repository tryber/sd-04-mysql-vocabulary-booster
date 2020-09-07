(
    SELECT
        Country País
    FROM
        w3schools.suppliers
    ORDER BY
        Country
    LIMIT
        10
)
UNION
(
    SELECT
        Country País
    FROM
        w3schools.customers
    ORDER BY
        Country
    LIMIT
        10
)
ORDER BY
    País
LIMIT
    5;
