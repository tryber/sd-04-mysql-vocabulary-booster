-- requisito 10

-- Renomeia para Produto, Mínima e Máxima
-- Faz a Média (avg), com 2 decimais (round,2) e renomeia
-- Combina coluna ProductID nas tabelas order_details e products
-- Agrupo por order_details
-- Aplica o criterio de >20 para coluna Média
-- Ordena por coluna Média e Produto
SELECT products.ProductName AS Produto,
MIN(order_details.Quantity) AS Mínima,
MAX(order_details.Quantity) AS Máxima,
ROUND(AVG(order_details.Quantity), 2) AS Média
FROM w3schools.products
INNER JOIN w3schools.order_details ON order_details.ProductID = products.ProductID
GROUP BY (order_details.ProductID)
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
