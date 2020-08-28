SELECT 
    P.ProductName AS `Produto`,
    MIN(OD.Quantity) AS `quantidade mínima`,
    MAX(OD.Quantity) AS `quantidade máxima`,
    ROUND(AVG(OD.Quantity), 2) AS `média de quantidade`
FROM
    w3schools.products AS P
        JOIN
    w3schools.order_details AS OD ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `média de quantidade` > 20
ORDER BY `média de quantidade` , P.ProductName;
