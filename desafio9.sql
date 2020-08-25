SELECT
  concat(e.FirstName, ' ', e.LastName),
  COUNT(o.EmployeeID)
FROM
  w3schools.employees AS e
  INNER JOIN w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY
  (o.EmployeeID)
ORDER BY
  COUNT(o.EmployeeID);
