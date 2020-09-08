select prod.ProductName as `Produto`,
min(ord.Quantity) as `Mínima`,
max(ord.Quantity) as `Máxima`,
round(avg(ord.Quantity), 2) as `Média`
from w3schools.products as prod
inner join w3schools.order_details as ord
on prod.ProductID = ord.ProductID
group by ord.ProductID
having `Média` > 20
order by `Média`, `Produto`;
