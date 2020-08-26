SELECT cust.CustomerName AS `Nome de contato`,
ship.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.shippers AS ship
INNER JOIN w3schools.orders AS ord
ON ship.ShipperID = ord.ShipperID
INNER JOIN w3schools.customers AS cust
ON cust.CustomerID = ord.CustomerID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
