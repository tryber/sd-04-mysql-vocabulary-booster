SELECT
  Cus.ContactName AS 'Nome de contato',
  Ships.ShipperName AS 'Empresa que fez o envio',
  Orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS Cus
INNER JOIN w3schools.orders AS Orders
ON Cus.CustomerID = Orders.CustomerID
INNER JOIN w3schools.shippers AS Ships
ON Ships.ShipperID = Orders.ShipperID
WHERE Ships.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
  Cus.ContactName ASC,
  Ships.ShipperName ASC,
  Orders.OrderDate ASC
;
