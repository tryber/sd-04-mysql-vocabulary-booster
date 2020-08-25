select p.productName as Produto, min(od.quantity) as Mínima, max(od.quantity) as Máxima, round(avg(od.quantity),2) as Média 
from products p, order_details od
where p.ProductID = od.ProductID
group by p.productName
order by 4, 1;
