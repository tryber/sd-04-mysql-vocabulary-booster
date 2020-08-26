select * from customers order by ContactName; select * from shippers; select * from order_details; select * from orders where customerID = 31;

select C.ContactName 'Nome de contato', S.ShipperName 'Empresa que fez o envio', O.OrderDate 'Data do pedido'
FROM w3schools.customers C
INNER JOIN w3schools.orders O on C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers S on S.ShipperID = O.ShipperID
HAVING S.ShipperName <> 'Federal Shipping'
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
