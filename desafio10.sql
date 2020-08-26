select * FROM products; select * FROM orders; select * FROM order_details ORDER BY ProductID;

SELECT P.ProductName Produto, (MIN(OD.Quantity)) Mínima, 
(MAX(OD.Quantity)) Máxima, ROUND(AVG(OD.Quantity), 2) Média
FROM w3schools.products P
INNER JOIN w3schools.order_details OD ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING Média > 20
ORDER BY Média, Produto;
