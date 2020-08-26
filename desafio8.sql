SELECT ContactName AS 'Nome de contato',
  ShipperName AS 'Empresa que fez o envio',
  OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
  JOIN w3schools.customers AS cus ON cus.customerID = ord.customerID
  JOIN w3schools.shippers AS shi ON shi.shipperID = ord.shipperID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY ContactName, shipperName, orderDate;
