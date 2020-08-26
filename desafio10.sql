/* Desafio 10
Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados
 acima de 20.00. Usando o banco w3schools como referência, monte uma query que exiba quatro colunas:
	1. A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
	2. A segunda coluna deve possuir o alias "Mínima" e exibir a quantidade mínima
      que já foi pedida desse produto.
	3. A terceira coluna deve possuir o alias "Máxima" e exibir a quantidade máxima
      que já foi pedida desse produto.
	4. A quarta coluna deve deve possuir o alias "Média" e exibir a média de quantidade
      nos pedidos deste produto, arredondada para duas casas decimais.
Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente.
 Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética. */
SELECT p.ProductName AS `Produto`,
  MIN(od.Quantity) AS `Mínima`,
  MAX(od.Quantity) AS `Máxima`, ROUND(AVG(od.Quantity), 2) AS `Média`
  FROM w3schools.order_details AS od
  INNER JOIN w3schools.products AS p ON p.ProductID = od.ProductID
  GROUP BY od.ProductID
  HAVING `Média` > 20.00
  ORDER BY `Média` ASC, `Produto` ASC;
