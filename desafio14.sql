(SELECT Cus.Country AS País FROM w3schools.customers AS Cus)
UNION
(SELECT Sup.Country AS País FROM w3schools.suppliers AS Sup)
ORDER BY País
LIMIT 5;
