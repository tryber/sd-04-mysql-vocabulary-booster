select  p.ProductName Produto, p.Price Preço
from w3schools.products p
inner join w3schools.order_details o on o.ProductID = p.ProductID and o.Quantity > 80
order by Produto;
