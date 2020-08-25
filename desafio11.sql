-- DESAFIO 11

-- SELECT A.contactName AS `Nome`, A.country AS `País`, (COUNT(A.contactName) - 1) AS `Número de compatriotas` -- Gambiarra
-- FROM w3schools.customers AS A, w3schools.customers AS B
-- WHERE A.Country = B.Country
-- GROUP BY `Nome` ORDER BY A.ContactName;

-- Try Another Way
-- Refatorado depois de fazer o Desafio 12 onde usei o <> para retirar o nome "duplicado"!
-- Alterado o GROUP BY com a Ajuda no JUNIO > https://github.com/tryber/sd-04-mysql-vocabulary-booster/pull/11/files
SELECT A.contactName AS `Nome`, A.country AS `País`, COUNT(B.contactName) AS `Número de compatriotas`
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country AND A.contactName <> B.contactName
GROUP BY A.CustomerId ORDER BY `Nome`;

