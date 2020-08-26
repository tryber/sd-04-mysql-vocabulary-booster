-- requisito 8

-- renomeia coluna ContactName para 'Nome de Contato' na tabela customers
-- renomeia coluna ShipperName para 'Empresa que fez o envio' na tabela shippers
-- renomeia coluna OrderDate para 'Data do pedido' na tabela orders
-- Combina (inner join-on) coluna ShipperID nas tabelas orders e shippers
-- Combina coluna CustomerID nas tabelas orders e customers
-- Os pedido realizados quando (where) feito pela 'Spreedy Express' e 'United Package'
-- Ordena por 'Nome de Contado', 'Empresa que fez o envio', 'Data do pedido'
SELECT customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.orders
INNER JOIN w3schools.shippers ON orders.ShipperID = shippers.ShipperID
INNER JOIN w3schools.customers ON orders.CustomerID = customers.CustomerID
WHERE shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`,`Empresa que fez o envio`,`Data do pedido`;
