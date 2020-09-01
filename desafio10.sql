SELECT p.productname as 'Produto',
    MIN(od.quantity) AS 'Mínimo',
    MAX(od.quantity) AS 'Máximo',
    ROUND(SUM(od.quantity) / COUNT(od.orderid), 2) AS 'Média'
FROM order_details AS od
    INNER JOIN products p on od.productid = p.productid
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média` ASC,
    `Produto` ASC;
