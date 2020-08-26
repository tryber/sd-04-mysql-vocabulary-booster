SELECT P.ProductName Produto, P.Price Preço
FROM w3schools.products P
INNER JOIN w3schools.order_details OD on P.ProductID = OD.ProductID and OD.Quantity > 80
ORDER BY Produto;
