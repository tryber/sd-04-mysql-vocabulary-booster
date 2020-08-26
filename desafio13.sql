SELECT productName AS 'Produto',
  price AS 'Preço'
FROM w3schools.order_details AS d
  JOIN w3schools.products AS p ON p.productID = d.productID
GROUP BY d.productID
HAVING MAX(quantity) > 80.00
ORDER BY productName;
