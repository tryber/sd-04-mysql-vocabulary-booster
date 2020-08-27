-- Desafio 11
-- Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente. Ou seja, suponha que houvese apenas quatro clientes:
-- Maria, do Brasil.
-- João, do Brasil.
-- Gabriela, do Brasil.
-- Alex, da Irlanda.
-- Logo, podemos dizer que Maria, João e Gabriela são compatriotas entre si, haja visto que as três pessoas moram no Brasil. Além disso, podemos dizer que tanto Maria quanto João e Gabriela possuem duas pessoas compatriotas associadas. Já Alex não possui compatriota, haja visto que não há outras pessoas da Irlanda.
-- Usando o banco w3schools como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
-- A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
-- A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.
SELECT c1.ContactName AS Nome,
c1.Country AS País,
COUNT(c2.CustomerID) AS `Número de compatriotas`
FROM w3schools.customers AS c1,
w3schools.customers AS c2
WHERE c1.Country = c2.Country AND c1.CustomerID <> c2.CustomerID
GROUP BY c1.CustomerID
ORDER BY Nome;
