SELECT CONCAT(E1.FIRST_NAME, ' ', E1.LAST_NAME) `Nome completo funcionário 1`, E1.SALARY `Salário funcionário 1`,  E1.PHONE_NUMBER `Telefone funcionário 1`
, CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) `Nome completo funcionário 2`, E2.SALARY `Salário funcionário 2`, E2.PHONE_NUMBER `Telefone funcionário 2`
FROM hr.employees E1
INNER JOIN hr.employees E2 on E1.JOB_ID = E2.JOB_ID and  E1.EMPLOYEE_ID <> E2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
