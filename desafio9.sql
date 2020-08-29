SELECT 
    (SELECT 
            CONCAT(e.FirstName, ' ', e.LastName)
        FROM
            employees e
        WHERE
            e.EmployeeID = o.EmployeeID) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    orders o
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;

# usando o JOIN a sintaxe é mais limpa mais um custo maior (56.78 contra 40.20 usando subqueries)
/*SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    orders o
        JOIN
    employees e ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;*/
