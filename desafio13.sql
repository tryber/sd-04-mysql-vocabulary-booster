SELECT ProductName AS 'Produto', Price AS 'Preço' FROM  products AS p
INNER JOIN 	order_details AS od ON p.ProductID = od.ProductID
GROUP BY ProductName, Price, Quantity
HAVING Quantity > 80;
