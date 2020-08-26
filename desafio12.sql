SELECT
CONCAT(funcA.FIRST_NAME, ' ', funcA.LAST_NAME) AS `Nome completo funcionário 1`,
funcA.SALARY AS `Salário funcionário 1`,
funcA.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(funcB.FIRST_NAME, ' ', funcB.LAST_NAME) AS `Nome completo funcionário 2`,
funcB.SALARY AS `Salário funcionário 2`,
funcB.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS funcA, hr.employees AS funcB
WHERE funcA.JOB_ID = funcB.JOB_ID AND funcA.EMPLOYEE_ID <> funcB.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
