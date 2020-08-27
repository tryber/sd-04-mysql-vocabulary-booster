SELECT ContactName AS 'Nome de contato', ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM customers c
INNER JOIN orders o ON o.CustomerID = c.CustomerID
INNER JOIN shippers s ON s.ShipperID = o.ShipperID
WHERE ShipperName IN('Speedy Express', 'United Package')
ORDER BY ContactName, ShipperName, OrderDate;
