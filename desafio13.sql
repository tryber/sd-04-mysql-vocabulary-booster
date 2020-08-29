SELECT 
    (SELECT 
            ProductName
        FROM
            products p
        WHERE
            p.ProductID = od.ProductID) AS Produto,
    (SELECT 
            price
        FROM
            products p
        WHERE
            p.ProductID = od.ProductID) AS Preço
FROM
    order_details od
GROUP BY ProductID
HAVING MAX(Quantity) > 80
ORDER BY Produto;
