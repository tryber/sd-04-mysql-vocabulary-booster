SELECT
    (SELECT ProductName FROM w3schools.products AS P WHERE P.ProductID = OD.ProductID) AS Produto,
    (SELECT Price FROM w3schools.products AS P WHERE P.ProductID = OD.ProductID) AS Preço
FROM
    w3schools.order_details AS OD
WHERE
    Quantity > 80
ORDER BY Produto;
