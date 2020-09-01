SELECT c.contactname AS 'Nome',
    cp.country AS 'País',
    COUNT(cp.customerid) AS 'Número de compatriotas'
FROM customers AS c,
    customers AS cp
WHERE c.country = cp.country
    AND c.Customerid <> cp.customerid
GROUP BY c.customerid
ORDER BY `Nome`;