/* Desafio 8
Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas
 "Speedy Express" ou "United Package". Para isso, usando o banco w3schools como referência,
 monte uma query que exiba três colunas:
	1. A primeira coluna deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.
	2. A segunda coluna deve possuir o alias "Empresa que fez o envio" e exibir o
    nome da empresa que efetuou o envio do pedido.
	3. A terceira coluna deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.
Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.
 Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa
 que fez o envio do produto em ordem alfabética e caso há empresas com o mesmo nome,
 ordene os resultados pela data do pedido em ordem crescente. */
SELECT c.ContactName AS `Nome de contato`,
  ShipperName AS `Empresa que fez o envio`,
  o.OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s ON s.ShipperID = o.ShipperID
WHERE o.ShipperID <> 3
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
