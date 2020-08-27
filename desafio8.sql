SELECT cs.ContactName AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
od.OrderDate AS `Data do pedido`
FROM w3schools.orders AS od
INNER JOIN w3schools.customers AS cs
ON od.CustomerID=cs.CustomerID
INNER JOIN w3schools.shippers AS sh
ON od.ShipperID=sh.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY cs.ContactName, sh.ShipperName, od.OrderDate;
