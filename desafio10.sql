SELECT pr.ProductName AS `Produto`,
MIN(ot.Quantity) AS `Mínima`,
MAX(ot.Quantity) AS `Máxima`,
ROUND(SUM(ot.Quantity)/COUNT(ot.Quantity),2) AS `Média`
FROM w3schools.order_details AS ot
INNER JOIN w3schools.products AS pr
ON ot.ProductID=pr.ProductID
GROUP BY pr.ProductName
HAVING SUM(ot.Quantity)/COUNT(ot.Quantity) > 20
ORDER BY `Média`, pr.ProductName;
