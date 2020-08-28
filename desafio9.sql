select concat(employees.FirstName, " ", employees.LastName) as "Nome completo",
count(employees.EmployeeID) as "Total de pedidos"
from employees
inner join orders
on employees.EmployeeID = orders.EmployeeID
group by employees.EmployeeID
order by count(employees.EmployeeID);

/*Exibe todos as pessoas funcionárias que já realizaram algum pedido, 
mostrando também seu total de pedidos feitos. Usando o banco w3schools como referência,
monte uma query que exiba duas colunas:
A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária 
(não se esqueça do espaço entre o nome e o sobrenome).
A segundo coluna deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
Ordene seus resultados pelo total de pedidos em ordem crescente.*/
