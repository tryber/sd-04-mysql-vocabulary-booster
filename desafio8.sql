SELECT
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido',
    c.ContactName AS 'Nome de contato'
FROM
    w3schools.orders AS o
    INNER JOIN w3schools.customers AS c ON c.CustomerID = o.CustomerID
    INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
ORDER BY
    c.ContactName ASC,
    s.ShipperName ASC,
    o.OrderDate ASC;
