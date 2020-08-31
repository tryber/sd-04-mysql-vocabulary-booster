-- requisito 11

-- C1 e C2 para diferenciação de customers
-- Coluna ContactName renomeia para Nome
-- Coluna Conuntry renomeia para País
-- contagem (count) de coluna C2.ContactName renomeia para Número de compatriotas
-- Quando C1 for diferente (<>) de C2 em coluna ContactName
-- E (and) C1 for igual de C2 em coluna Country
-- Agrupa C1 nas coluna ContactName e Country e ordena por coluna Nome
SELECT C1.ContactName AS 'Nome',
C1.Country AS 'País',
COUNT(C2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS C1,
w3schools.customers AS C2
WHERE C1.ContactName <> C2.ContactName
AND C1.Country = C2.Country
GROUP BY C1.ContactName, C1.Country
ORDER BY `Nome` ASC;
