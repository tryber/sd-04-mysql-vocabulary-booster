SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo funcionário 1`,
  e.SALARY `Salário funcionário 1`,
  e.PHONE_NUMBER `Telefone funcionário 1`,
  CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) `Nome completo funcionário 2`,
  e2.SALARY `Salário funcionário 2`,
  e2.PHONE_NUMBER `Telefone funcionário 2`
FROM
  hr.employees e,
  hr.employees e2
WHERE
  e.JOB_ID = e2.JOB_ID AND
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) <> CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME)
ORDER BY
  `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
