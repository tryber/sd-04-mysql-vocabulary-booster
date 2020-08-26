SELECT p.productName as Produto, min(od.quantity) as Mínima, max(od.quantity) as Máxima, round(avg(od.quantity),2) as Média 
FROM products p, order_details od
WHERE p.ProductID = od.ProductID
group by p.productName HAVING Média > 20
ORDER BY 4, 1;
