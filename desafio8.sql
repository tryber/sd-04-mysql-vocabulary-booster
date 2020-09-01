SELECT c.customername AS 'Nome de contato',
    s.shippername AS 'Empresa que fez o envio',
    o.orderdate AS 'Data do pedido'
FROM orders as o
    INNER JOIN shippers s on o.shipperid = s.shipperid
    INNER JOIN customers c on o.customerid = c.customerid
WHERE s.shippername in ('Speedy Express', 'United Package')
ORDER BY c.customername ASC,
    s.shippername ASC,
    o.orderdate ASC;
