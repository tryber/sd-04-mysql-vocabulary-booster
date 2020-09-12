SELECT
  products.ProductName AS "Produto",
  products.Price AS "Preço"
FROM
  w3schools.products AS products
  INNER JOIN w3schools.order_details AS orderDetails ON (products.productID = orderDetails.ProductID)
WHERE
  orderDetails.Quantity > 80
ORDER BY
  `Produto`;
