-- DESAFIO 11

SELECT A.contactName AS `Nome`, A.country AS `País`, COUNT(A.contactName) - 1 AS `Número de compatriotas` -- Gambiarra
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country
GROUP BY A.ContactName ORDER BY A.ContactName;
