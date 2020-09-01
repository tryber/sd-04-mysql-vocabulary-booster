SELECT customers.ContactName AS `Nome de contato`,
shippers.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
JOIN w3schools.customers AS customers
ON orders.customerID = customers.customerID
JOIN w3schools.shippers AS shippers
ON orders.shipperID = orders.shipperID
WHERE shippers.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
