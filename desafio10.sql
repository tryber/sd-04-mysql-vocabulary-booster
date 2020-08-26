SELECT p.ProductName `Produto`,
MIN(od.Quantity) `Mínima`,
MAX(od.Quantity) `Máxima`,
ROUND(AVG(od.Quantity), 2) `Média`
FROM w3schools.products p
INNER JOIN w3schools.order_details od ON p.ProductID = od.ProductID
GROUP BY `Produto` HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
