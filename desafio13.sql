SELECT p.ProductName `Produto`,
p.Price `Preço`
FROM w3schools.products p
INNER JOIN
w3schools.order_details od ON
p.ProductID = od.ProductID AND
od.Quantity > 80
ORDER BY
`Produto`;
