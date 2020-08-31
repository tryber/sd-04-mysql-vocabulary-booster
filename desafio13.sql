-- requisito 13


-- Seleciona ProductName e renomeia pra Produto e Price para Preço
-- Onde (where) colunas ProductID nas tabelas products e order_details forem iguais
-- E (and) Coluna Quanlity para maior que 80
-- Ordena tabela Coluna Produto
SELECT products.ProductName AS 'Produto',
products.Price As 'Preço'
FROM w3schools.products AS products,
w3schools.order_details AS order_details
WHERE products.ProductID = order_details.ProductID
AND order_details.Quantity > 80
ORDER BY `Produto`;
