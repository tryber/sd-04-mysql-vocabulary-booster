select p.ProductName `Produto`, p.Price `Preço`
from
w3schools.products p,
w3schools.order_details od
where od.ProductID = p.ProductID and od.Quantity > 80
order by `Produto`;
