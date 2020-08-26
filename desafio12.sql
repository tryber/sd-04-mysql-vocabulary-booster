SELECT
  CONCAT(EmpA.FIRST_NAME, ' ', EmpA.LAST_NAME) AS 'Nome completo funcionário 1',
  EmpA.SALARY AS 'Salário funcionário 1',
  EmpA.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(EmpB.FIRST_NAME, ' ', EmpB.LAST_NAME) AS 'Nome completo funcionário 2',
  EmpB.SALARY AS 'Salário funcionário 2',
  EmpB.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS EmpA, hr.employees AS EmpB
WHERE EmpA.JOB_ID = EmpB.JOB_ID AND EmpA.EMPLOYEE_ID <> EmpB.EMPLOYEE_ID
ORDER BY
  CONCAT(EmpA.FIRST_NAME, ' ', EmpA.LAST_NAME) ASC,
  CONCAT(EmpB.FIRST_NAME, ' ', EmpB.LAST_NAME) ASC
;
