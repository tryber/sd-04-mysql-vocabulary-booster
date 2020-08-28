select products.ProductName as "Produto",
min(order_details.Quantity) as "Mínima",
max(order_details.Quantity) as "Máxima",
round(avg(order_details.Quantity),2) as "Média" 
from order_details
inner join products
on order_details.ProductID = products.ProductID
group by order_details.ProductID
having avg(order_details.Quantity) > 20
order by round(avg(order_details.Quantity),2),  products.ProductName ;

/*Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade 
nos pedidos registrados acima de 20.00. Usando o banco w3schools como referência, 
monte uma query que exiba quatro colunas:
A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
A segunda coluna deve possuir o alias "Mínima" e exibir a quantidade mínima 
que já foi pedida desse produto.
A terceira coluna deve possuir o alias "Máxima" e exibir a quantidade máxima q
ue já foi pedida desse produto.
A quarta coluna deve deve possuir o alias "Média" e exibir a média de quantidade 
nos pedidos deste produto, arredondada para duas casas decimais.
Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente. 
Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética.*/
