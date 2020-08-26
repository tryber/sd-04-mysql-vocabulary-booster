SELECT
(SELECT ContactName FROM w3schools.customers c WHERE c.CustomerID = o.CustomerID) "Nome de contato",
(SELECT ShipperName FROM w3schools.shippers s WHERE s.ShipperID = o.ShipperID) "Empresa que fez o envio",
OrderDate `Data do pedido` 
FROM w3schools.orders o
WHERE (SELECT ShipperName FROM w3schools.shippers s WHERE s.ShipperID = o.ShipperID) 
IN ('Speedy Express', 'United Package')
ORDER BY (SELECT ContactName FROM w3schools.customers c WHERE c.CustomerID = o.CustomerID) ASC,
(SELECT ShipperName FROM w3schools.shippers s WHERE s.ShipperID = o.ShipperID) ASC,
OrderDate ASC;
