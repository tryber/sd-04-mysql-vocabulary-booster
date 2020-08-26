/* Desafio 13
Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80.
 Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
	1. A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
	2. A segunda coluna deve possuir o alias "Preço" e exibir o preço desse produto.
Os resultados devem estar ordenados pelo nome do produto em ordem alfabética. */
SELECT p.ProductName AS `Produto`, p.Price AS `Preço`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p ON p.ProductID = od.ProductID
WHERE od.Quantity > 80 ORDER BY `Produto` ASC;
