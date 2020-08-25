select c.contactName as 'Nome de contato', s.shipperName as 'Empresa que fez o envio', o.orderdate as 'Data do pedido'
from customers c, shippers s, orders o
where c.CustomerID = o.CustomerID and o.ShipperID = s.ShipperID
order by 1,2,3;
