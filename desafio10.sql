-- DESAFIO 10

SELECT P.productName AS `Produto`,
MIN(OD.quantity) AS `Mínima`,
MAX(OD.quantity) AS `Máxima`,
AVG(OD.quantity) AS `Média`
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20.00 ORDER BY `Média`, `Produto`;
