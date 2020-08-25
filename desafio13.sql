-- DESAFIO 13

SELECT productName AS `Produto`,
price AS `Preço`
FROM w3schools.products
WHERE productId IN ( SELECT productId from w3schools.order_details WHERE quantity > 80)
ORDER BY `Produto`;
