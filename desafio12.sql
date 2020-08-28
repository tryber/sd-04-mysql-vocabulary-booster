SELECT 
CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) `Nome completo funcionário 1`,
A.SALARY `Salário funcionário 1`,
A.PHONE_NUMBER `Telefone funcionário 1`,
CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) `Nome completo funcionário 2`,
B.SALARY `Salário funcionário 2`,
B.PHONE_NUMBER `Telefone funcionário 2`
FROM hr.employees A, hr.employees B WHERE A.JOB_ID = B.JOB_ID AND A.SALARY <> B.SALARY
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
