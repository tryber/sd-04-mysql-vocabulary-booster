select 
ct.ContactName as "Nome de contato",
sp.ShipperName as "Empresa que fez o envio",
od.OrderDate as "Data do pedido"
from w3schools.customers ct
inner join w3schools.orders od
on od.CustomerID = ct.CustomerID
inner join w3schools.shippers sp
on sp.ShipperId = od.ShipperID
where sp.ShipperID in(1, 2)
order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
