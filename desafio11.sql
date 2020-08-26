SELECT * FROM w3schools.customers;
SELECT ContactName `Nome`, Country `País`, COUNT(Country) `Número de compatriotas`
FROM w3schools.customers WHERE COUNT(Country) > 1
GROUP BY `Nome`;
