SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders o
        JOIN
    customers c ON c.CustomerID = o.CustomerID
        JOIN
    shippers s ON s.ShipperID = o.ShipperID
    where s.ShipperName in ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
