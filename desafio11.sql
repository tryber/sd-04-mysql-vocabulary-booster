SELECT
  CustomerName,
  Country,
  count(*) -1
FROM
  w3schools.customers
GROUP BY
  Country;
