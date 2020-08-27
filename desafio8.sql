select c.ContactName "Nome de contato", s.ShipperName "Empresa que fez o envio",
o.OrderDate "Data do pedido"
from w3schools.customers c
inner join w3schools.orders o on c.CustomerId = o.CustomerID
inner join w3schools.shippers s on s.ShipperID = o.ShipperID
having s.ShipperName <> 'Federal Shipping'
order by c.ContactName, s.ShipperName, o.OrderDate;
