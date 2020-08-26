SELECT
(
SELECT ProductName
FROM w3schools.products
WHERE products.ProductID = order_details.ProductID
) AS `Produto`,
(
SELECT MIN(Quantity)
FROM w3schools.order_details as o
WHERE order_details.ProductID = o.ProductID
) AS `Mínima`,
MAX(Quantity) AS `Máxima`,
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details
GROUP BY ProductID
HAVING AVG(Quantity) > 20
ORDER BY `Média`, `Produto`;