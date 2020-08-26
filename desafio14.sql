-- DESAFIO 14

(SELECT country FROM w3schools.customers ORDER BY country LIMIT 5)
UNION
(SELECT country from w3schools.suppliers ORDER BY country LIMIT 5)
ORDER BY country LIMIT 5;
