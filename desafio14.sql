SELECT 
    country AS País
FROM
    customers 
UNION SELECT 
    country
FROM
    suppliers
ORDER BY País
LIMIT 5;
