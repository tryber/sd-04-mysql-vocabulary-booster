SELECT (SELECT ContactName FROM w3schools.customers WHERE CustomerID = ord.CustomerId) AS 'Nome de contato',
    sh.ShipperName AS 'Empresa que fez o envio',
    ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
INNER JOIN w3schools.shippers AS sh ON sh.ShipperID = ord.ShipperID
WHERE sh.ShipperName IN ("Speedy Express", "United Package")
ORDER BY `Nome de contato`, sh.ShipperName, ord.OrderDate;
