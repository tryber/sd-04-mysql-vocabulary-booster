-- requisito 14

-- Selecio coluna Country e renomeia por País
-- O resultados unico(union select) das Tabelas customers e suppliers
-- Ordena por País
SELECT Country AS 'País' 
FROM w3schools.customers 
UNION SELECT Country 
FROM w3schools.suppliers 
ORDER BY `País` LIMIT 5;
