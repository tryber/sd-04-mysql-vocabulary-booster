SELECT Cx.ContactName AS Nome,
  Cx.Country AS País,
  COUNT(Cy.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS Cx,
  w3schools.customers AS Cy
WHERE Cx.Country = Cy.Country
  AND Cx.ContactName <> Cy.ContactName
GROUP BY Cx.CustomerID
ORDER BY Nome ASC;
