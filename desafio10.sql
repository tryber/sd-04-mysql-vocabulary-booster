SELECT 
    (SELECT 
            ProductName
        FROM
            products p
        WHERE
            p.ProductID = od.ProductID) AS Produto,
    MIN(Quantity) AS Mínima,
    MAX(Quantity) AS Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    order_details od
GROUP BY Produto
HAVING Média > 20
ORDER BY `Média`;

#custo usando join = 638 enquanto o cursto usando subquery = 106.60
/*SELECT 
    p.ProductName AS Produto,
    MIN(Quantity) AS Mínima,
    MAX(Quantity) AS Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    order_details od
        JOIN
    products p ON p.ProductID = od.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY `Média`;*/
