SELECT
  CONCAT(
    firstEmployee.FIRST_NAME,
    ' ',
    firstEmployee.LAST_NAME
  ) AS 'Nome completo funcionário 1',
  firstEmployee.SALARY AS 'Salário funcionário 1',
  firstEmployee.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(
    secondEmployee.FIRST_NAME,
    ' ',
    secondEmployee.LAST_NAME
  ) AS "Nome completo funcionário 2",
  secondEmployee.SALARY AS "Salário funcionário 2",
  secondEmployee.PHONE_NUMBER AS "Telefone funcionário 2"
FROM
  hr.employees AS firstEmployee,
  hr.employees AS secondEmployee
WHERE
  firstEmployee.JOB_ID = secondEmployee.JOB_ID
  AND CONCAT(
    firstEmployee.FIRST_NAME,
    ' ',
    firstEmployee.LAST_NAME
  ) <> CONCAT(
    secondEmployee.FIRST_NAME,
    ' ',
    secondEmployee.LAST_NAME
  )
ORDER BY
  `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
