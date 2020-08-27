SELECT t1.ContactName AS Nome,
  t2.Country AS 'País',
  COUNT(*) AS 'Número de compatriotas'
  FROM w3schools.customers AS t1,
  w3schools.customers AS t2
  WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID
  GROUP BY t1.CustomerID
  ORDER BY Nome;

-- USE w3schools;
-- DELIMITER $$
-- CREATE FUNCTION calcCompatriots(varCountry VARCHAR(100))
-- RETURNS INT READS SQL DATA
-- BEGIN
--   DECLARE compatriots INT;
--   SELECT COUNT(*) - 1 FROM w3schools.customers
--   WHERE w3schools.customers.Country = varCountry
--   INTO compatriots;
--   RETURN compatriots;
-- END$$
-- DELIMITER ;
-- SELECT
--   ContactName AS Nome,
--   Country AS `País`,
--   calcCompatriots(Country) AS `Número de compatriotas`
-- FROM w3schools.customers
-- WHERE calcCompatriots(Country) > 0
-- ORDER BY Nome;
