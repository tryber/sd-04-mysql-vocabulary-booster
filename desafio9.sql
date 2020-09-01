SELECT CONCAT(e.firstname, ' ', e.lastname) as 'Nome completo',
    COUNT(o.orderid) AS 'Total de pedidos'
FROM orders AS o
    INNER JOIN employees e on o.employeeid = e.employeeid
GROUP BY e.employeeid
ORDER BY `Total de pedidos` ASC;
