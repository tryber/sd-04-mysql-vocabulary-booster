SELECT * FROM w3schools.customers;
SELECT 
ct.CustomerName AS "Nome de contato",
sp.ShipperName AS "Empresa que faz o envio",
od.OrderDate AS "Data do pedido"
FROM w3schools.customers ct
INNER JOIN w3schools.orders od
ON od.CustomerID = ct.CustomerID
INNER JOIN w3schools.shippers sp
ON sp.ShipperId = od.ShipperID
ORDER BY `Nome de contato`, `Empresa que faz o envio`, `Data do pedido`;
