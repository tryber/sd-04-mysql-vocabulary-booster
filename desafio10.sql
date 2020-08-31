SELECT (SELECT ProductName FROM w3schools.products AS pro WHERE pro.ProductID = ord.ProductID) AS Produto,
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details AS ord
GROUP BY ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, Produto;
