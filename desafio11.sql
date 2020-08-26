/* Desafio 11
Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade
 de compatriotas para cada pessoa cliente. Ou seja, suponha que houvese apenas quatro clientes:
	1. Maria, do Brasil.
	2. João, do Brasil.
	3. Gabriela, do Brasil.
	4. Alex, da Irlanda.
Logo, podemos dizer que Maria, João e Gabriela são compatriotas entre si, haja visto que as três pessoas
 moram no Brasil. Além disso, podemos dizer que tanto Maria quanto João e Gabriela possuem duas pessoas
 compatriotas associadas. Já Alex não possui compatriota, haja visto que não há outras pessoas da Irlanda.

Usando o banco w3schools como referência, monte uma query que exiba três colunas:
	1. A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
	2. A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
	3. A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o
      número de pessoas que moram no mesmo país.
Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética. */

/*select ContactName as Nome, Country as País from w3schools.customers order by Nome asc; -- coluna 1
select Country, (count(Country) - 1) as `Número de compatriotas` from w3schools.customers
group by Country;
select * from w3schools.customers; coluna 2 e 3*/

SELECT c1.ContactName AS Nome,
  c1.Country AS País
  , (COUNT(c1.Country) - 1) AS `Número de compatriotas`
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY Nome ASC;
