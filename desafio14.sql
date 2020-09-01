SELECT DISTINCT(Country) AS 'País' FROM w3schools.suppliers 
UNION
SELECT DISTINCT(Country) AS 'País' from w3schools.customers
ORDER BY 1
LIMIT 5;
