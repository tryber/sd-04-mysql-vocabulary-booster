SELECT p.productname AS 'Produto',
    p.price AS 'Preço'
FROM products AS p
    INNER JOIN order_details AS od ON p.productid = od.productid
WHERE od.quantity > 80
ORDER BY p.productname ASC;
