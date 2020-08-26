SELECT p.ProductName AS "Produto",
MIN(od.Quantity) AS "Mínima",
MAX(od.Quantity) AS "Máxima",
ROUND(AVG(od.Quantity), 2) AS "Média"
FROM w3schools.orders o
INNER JOIN w3schools.order_details od
ON o.OrderID = od.OrderID
INNER JOIN w3schools.products p
ON p.ProductID = od.ProductID 
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`
;
