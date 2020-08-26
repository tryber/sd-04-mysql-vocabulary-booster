-- Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80.
-- Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda coluna deve possuir o alias "Preço" e exibir o preço desse produto.
-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.

-- SELECT ProductID FROM w3schools.order_details WHERE Quantity > 80;

SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.products
WHERE
    ProductID IN (SELECT 
            ProductID
        FROM
            w3schools.order_details
        WHERE
            Quantity > 80)
ORDER BY `Produto`;
