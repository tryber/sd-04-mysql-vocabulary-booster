SELECT a.ContactName `Nome`, a.Country `País`, COUNT(a.Country)-1 `Número de compatriotas`
FROM w3schools.customers a, w3schools.customers b 
WHERE a.Country = b.Country 
GROUP BY `Nome`, `País` having `Número de compatriotas` <> 0
ORDER BY `Nome`;
