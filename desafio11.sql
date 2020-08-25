SELECT
  CusA.ContactName AS Nome,
  CusA.Country AS País,
  (
    SELECT COUNT(Country)
    FROM w3schools.customers
    WHERE CusA.Country = Country AND CusA.CustomerID <> CustomerID
  ) AS 'Número de compatriotas'
FROM w3schools.customers AS CusA, w3schools.customers AS CusB
WHERE (
  SELECT COUNT(Country)
  FROM w3schools.customers
  WHERE CusA.Country = Country AND CusA.CustomerID <> CustomerID
) > 0
GROUP BY CusA.ContactName
ORDER BY CusA.ContactName ASC;
