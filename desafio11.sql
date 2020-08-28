select c1.ContactName as "Nome",
c1.Country as "País",
count(c2.Country) - 1 as "Número de compatriotas"
from customers c1
inner join customers c2
on c1.Country = c2.Country
group by c1.Country, c1.ContactName
having count(c2.Country) > 1
order by c1.ContactName;


-- select customers.ContactName as "Nome",
-- customers.Country as "País",
-- count(customers.Country ="USA" 
-- or customers.Country = "UK" 
-- or customers.Country ="Japain" 
-- or customers.Country ="Spain"
-- or customers.Country ="Sweden" 
-- or customers.Country ="Brazil" 
-- or customers.Country ="Germany" 
-- or customers.Country ="Italy" 
-- or customers.Country ="Norway" 
-- or customers.Country ="Singapore" 
-- or customers.Country ="Denmark"
-- or customers.Country ="Finland" 
-- or customers.Country ="Autralia" 
-- or customers.Country ="Canada"
-- or customers.Country ="Mexico"
-- or customers.Country ="Belgium"
-- or customers.Country ="France"
-- or customers.Country ="Portugal"
-- or customers.Country ="Venezuela"
-- or customers.Country ="Ireland"
-- or customers.Country ="Argentina"
-- or customers.Country ="Austria"
-- or customers.Country ="Switzerland"
-- or customers.Country ="poland") -1 as "Número de compatriotas"
-- from customers
-- group by customers.Country, customers.ContactName
-- order by customers.ContactName;

/*Exibe todas as pessoas clientes que possuem compatriotas, 
mostrando a quantidade de compatriotas para cada pessoa cliente. 
Ou seja, suponha que houvese apenas quatro clientes:
Maria, do Brasil.
João, do Brasil.
Gabriela, do Brasil.
Alex, da Irlanda.
Logo, podemos dizer que Maria, João e Gabriela são compatriotas entre si, 
haja visto que as três pessoas moram no Brasil. 
Além disso, podemos dizer que tanto Maria quanto João e Gabriela possuem duas pessoas compatriotas associadas. 
Já Alex não possui compatriota, haja visto que não há outras pessoas da Irlanda.
Usando o banco w3schools como referência, monte uma query que exiba três colunas:
A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.*/