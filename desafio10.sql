select p.ProductName Produto, MIN(o.Quantity) Mínima,  MAX(o.Quantity) Máxima,
truncate(avg(o.Quantity),2) Média
from w3schools.products p
inner join w3schools.order_details o on p.ProductID = o.ProductID
group by Produto
having Média > 20
order by Média, Produto;
