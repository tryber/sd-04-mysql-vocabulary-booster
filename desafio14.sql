SELECT country as 'País'
FROM suppliers
UNION
SELECT country as 'País'
FROM customers
GROUP BY `País`
ORDER BY `País`
ASC LIMIT 5;
