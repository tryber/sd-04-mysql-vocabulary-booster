SELECT
  Prods.ProductName AS Produto,
  Prods.Price AS Preço
FROM w3schools.products AS Prods
INNER JOIN w3schools.order_details AS OrderDet
ON Prods.ProductID = OrderDet.ProductID
WHERE OrderDet.Quantity > 80
ORDER BY Prods.ProductName ASC;
