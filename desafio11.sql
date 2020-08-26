USE w3schools
DELIMITER $$
CREATE FUNCTION calcCompatriots(varCountry VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE compatriots INT;
  SELECT COUNT(*) - 1 FROM w3schools.customers WHERE w3schools.customers.Country = varCountry
  INTO compatriots;
  RETURN compatriots;
END $$
DELIMITER ;
SELECT
  ContactName AS Nome,
  Country AS `País`,
  calcCompatriots(Country) AS `Número de compatriotas`
FROM w3schools.customers
WHERE calcCompatriots(Country) > 0
ORDER BY Nome;
