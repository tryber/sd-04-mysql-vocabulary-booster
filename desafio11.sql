SELECT A.ContactName AS 'Nome', A.Country AS 'País', COUNT(B.Country)-1 AS 'Número de compatriotas'  
FROM customers A
INNER JOIN customers B ON A.Country = B.Country
GROUP BY Nome, A.Country
HAVING COUNT(B.Country)-1 > 0
ORDER BY Nome;
