SELECT productName AS 'Produto',
  MIN(quantity) AS 'Mínima',
  MAX(quantity) AS 'Máxima',
  ROUND(AVG(quantity), 2) AS 'Média'
FROM w3schools.order_details AS d
  JOIN w3schools.products AS p ON p.productID = d.productID
GROUP BY d.productID
HAVING AVG(quantity) > 20.00
ORDER BY `Média`,
  productName
