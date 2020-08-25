-- DESAFIO 8

SELECT C.contactName AS 'Nome de contato',
S.shipperName AS 'Empresa que fez o envio',
O.orderDate AS 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O
ON C.customerId = O.CustomerId
INNER JOIN w3schools.shippers AS S
ON O.shipperId = S.shipperId
WHERE S.shipperName IN ('Speedy Express', 'United Package')
ORDER BY C.contactName, S.shipperName, O.orderDate;
