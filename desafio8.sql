SELECT c.ContactName AS 'Nome de contato',
  s.ShipperName AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM
w3schools.orders AS o,
w3schools.customers AS c,
w3schools.shippers AS s
WHERE (c.CustomerID = o.CustomerID)
AND (s.ShipperID = o.ShipperID)
AND s.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
