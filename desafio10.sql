SELECT
  Prod.ProductName AS Produto,
  MIN(OrderDet.Quantity) AS Mínima,
  MAX(OrderDet.Quantity) AS Máxima,
  ROUND(AVG(OrderDet.Quantity), 2) AS Média
FROM w3schools.products AS Prod
INNER JOIN w3schools.order_details AS OrderDet
ON Prod.ProductID = OrderDet.ProductID
GROUP BY Prod.ProductName
HAVING Média > 20
ORDER BY Média ASC, Prod.ProductName ASC;
