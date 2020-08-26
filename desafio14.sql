SELECT Country FROM w3schools.customers AS País
UNION
SELECT Country FROM w3schools.suppliers AS País
ORDER BY Country
LIMIT 5;