SELECT (
SELECT CustomerName FROM w3schools.customers
WHERE CustomerID = w3schools.orders.CustomerID) AS 'Nome de contato',
(SELECT ShipperName FROM w3schools.shippers
WHERE ShipperID = w3schools.orders.ShipperID) AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM w3schools.orders
WHERE ShipperID IN(1,2)
ORDER BY 1, 2, 3;
