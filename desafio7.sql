SELECT
  UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) `Nome completo`,
  jh.START_DATE `Data de início`,
  e.SALARY `Salário`
FROM
  hr.employees e,
  hr.job_history jh
WHERE
  (e.EMPLOYEE_ID = jh.EMPLOYEE_ID) AND
  MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY
  `Nome completo`,
  `Data de início`;
