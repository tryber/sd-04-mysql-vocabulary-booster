SELECT
    p.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'Mínima',
    MIN(od.Quantity) AS 'Máxima',
    AVG(od.Quantity) AS 'Média'
FROM
    w3schools.products AS p
    INNER JOIN w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY
    p.ProductID
ORDER BY
    AVG(od.Quantity),
    p.ProductName;
