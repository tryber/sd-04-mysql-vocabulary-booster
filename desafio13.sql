select p.productname as Produto, p.price as Preço
from products p, order_details od
where p.ProductID = od.ProductID and od.Quantity > 80
order by 1
