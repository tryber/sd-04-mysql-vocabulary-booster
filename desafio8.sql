SELECT c.contactname AS 'Nome de contato',
    s.shippername AS 'Empresa que fez o envio',
    o.orderdate AS 'Data do pedido'
FROM customers as c
    JOIN orders AS o on c.customerid = o.customerid
    JOIN shippers AS s on o.shipperid = s.shipperid
WHERE s.shippername in ('Speedy Express', 'United Package')
ORDER BY c.contactname ASC,
    s.shippername ASC,
    o.orderdate ASC;
