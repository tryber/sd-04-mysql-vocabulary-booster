SELECT products.ProductName AS 'Produto',
products.Price AS 'Preço'
FROM w3schools.products AS products
JOIN w3schools.order_details AS details
ON details.Quantity > 80 AND products.ProductID = details.ProductID
ORDER BY products.ProductName;
