SELECT (
SELECT ProductName FROM w3schools.products
WHERE ProductID = w3schools.order_details.ProductID) AS 'Produto',
(SELECT Price FROM w3schools.products
WHERE ProductID = w3schools.order_details.ProductID) AS 'Preço'
FROM w3schools.order_details
WHERE Quantity > 80
ORDER BY 1;
