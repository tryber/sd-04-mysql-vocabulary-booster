SELECT a.ContactName `Nome`, a.Country `País`, (SELECT Count(a.Country)-1) `Número de compatriotas`
FROM w3schools.customers a, w3schools.customers b WHERE a.Country = b.Country
GROUP BY `Nome`, `País`
ORDER BY `Nome` ASC;
