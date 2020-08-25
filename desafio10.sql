SELECT
(SELECT ProductName FROM w3schools.products
WHERE ProductId = w3schools.order_details.ProductID) AS 'Produto', 
MIN(quantity) AS 'Mínima',
MAX(quantity) AS 'Máxima',
ROUND(AVG(quantity),2) AS 'Média'
FROM w3schools.order_details
GROUP BY ProductID
HAVING AVG(quantity) > 20
ORDER BY ROUND(AVG(quantity), 2), Produto;
