/* Desafio 9
Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos.
 Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
	1. A primeira coluna deve possuir o alias "Nome completo" e exibir
      o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
	2. A segundo coluna deve possuir o alias "Total de pedidos" e exibir
      a quantidade total de pedidos feitos pela pessoa.
Ordene seus resultados pelo total de pedidos em ordem crescente. */
SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
  COUNT(o.OrderID) AS `Total de pedidos`
  FROM w3schools.employees AS e
  INNER JOIN w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
  GROUP BY o.EmployeeID
  ORDER BY `Total de pedidos` ASC;
