USE w3schools;
DELIMITER $$

CREATE FUNCTION calculateCompatriots(country VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE compatriots INT;
  SELECT COUNT(*) -1 FROM w3schools.customers WHERE w3schools.customers.Country = country
  INTO compatriots;
  RETURN compatriots;
END $$

DELIMITER ;

SELECT ContactName AS Nome,
  Country AS 'País',
  calculateCompatriots(country) AS 'Número de compatriotas'
  FROM w3schools.customers
  ORDER BY Nome;
