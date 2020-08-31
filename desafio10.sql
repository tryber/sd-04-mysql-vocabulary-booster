SELECT prod.ProductName AS `Produto`,
MIN(ord.Quantity) AS `Mínima`,
MAX(ord.Quantity) AS `Máxima`,
ROUND(AVG(ord.Quantity), 2) AS `Média`
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord
ON prod.ProductID = ord.ProductID
GROUP BY ord.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
