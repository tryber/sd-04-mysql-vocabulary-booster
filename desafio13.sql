SELECT pr.ProductName AS `Produto`,
	pr.Price AS `Preço`
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS od
ON od.ProductID=pr.ProductID
WHERE od.Quantity > 80
ORDER BY pr.ProductName;
