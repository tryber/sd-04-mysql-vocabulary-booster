SELECT
  ProductID AS `Produto`,
  MIN(Quantity) AS `Mínima`,
  MAX(Quantity) AS `Máxima`,
  AVG (Quantity) AS `Média`
FROM
  w3schools.order_details
GROUP BY
  ProductID
ORDER BY
  `Média`,
  `Produto`;
