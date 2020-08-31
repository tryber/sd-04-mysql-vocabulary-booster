SELECT pro.ProductName AS Produto,
  pro.price AS Preço
FROM w3schools.order_details AS ord
INNER JOIN w3schools.products AS pro ON pro.ProductID = ord.ProductID
WHERE ord.Quantity > 80
ORDER BY Produto;
