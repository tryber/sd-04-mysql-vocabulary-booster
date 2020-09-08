select p.ProductName as Produto, p.Price as 'Preço'
from w3schools.order_details as od
inner join w3schools.products as p
on od.ProductID = p.ProductID
where od.Quantity > 80
order by Produto;
