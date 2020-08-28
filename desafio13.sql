SELECT 
    P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM
    w3schools.products AS P
        JOIN
    w3schools.order_details AS OD ON OD.ProductID = P.ProductID
WHERE
    OD.Quantity > 80
GROUP BY P.ProductName , P.Price
ORDER BY P.ProductName;
