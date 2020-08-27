SELECT ProductName AS 'Produto', MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima', ROUND(AVG(Quantity),2) AS 'Média' from products p
INNER JOIN order_details od ON p.ProductID = od.ProductID
INNER JOIN orders o ON o.OrderID = od.OrderID
GROUP BY Produto
HAVING ROUND(AVG(Quantity),2) > 20
ORDER BY AVG(Quantity), Produto;
