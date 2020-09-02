SELECT
    p.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'quantidade mínima',
    MIN(od.Quantity) AS 'quantidade máxima',
    AVG(od.Quantity) AS 'média de quantidade nos pedidos'
FROM
    w3schools.products AS p
    INNER JOIN w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY
    p.ProductID
ORDER BY
    AVG(od.Quantity),
    p.ProductName;
