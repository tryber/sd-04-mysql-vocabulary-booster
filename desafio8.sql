SELECT customers.ContactName AS `Nome de contato`,
shippers.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID
JOIN w3schools.customers AS customers
ON orders.CustomerID = customers.CustomerID
WHERE shippers.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY customers.ContactName, shippers.ShipperName, orders.OrderDate;

/*SELECT 
shippers.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID;

SELECT  customers.ContactName AS `Nome de contato`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
JOIN w3schools.customers AS customers
ON orders.CustomerID = customers.CustomerID;*/




