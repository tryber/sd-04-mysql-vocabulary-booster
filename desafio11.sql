-- DESAFIO 11

-- SELECT A.contactName AS `Nome`, A.country AS `País`, (COUNT(A.contactName) - 1) AS `Número de compatriotas` -- Gambiarra
-- FROM w3schools.customers AS A, w3schools.customers AS B
-- WHERE A.Country = B.Country
-- GROUP BY `Nome` ORDER BY A.ContactName;

-- Try Another Way

SELECT A.contactName AS `Nome`, A.country AS `País`, COUNT(B.contactName) AS `Número de compatriotas`
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country AND A.contactName <> B.contactName
GROUP BY `Nome` ORDER BY `Nome`;
