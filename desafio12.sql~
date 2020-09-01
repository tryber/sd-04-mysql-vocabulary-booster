SELECT CONCAT(sameTableOne.FIRST_NAME, ' ', sameTableOne.LAST_NAME) AS `Nome completo funcionário 1`,
sameTableOne.SALARY AS 'Salário funcionário 1',
sameTableOne.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(sameTableTwo.FIRST_NAME, ' ', sameTableTwo.LAST_NAME) AS `Nome completo funcionário 2`,
sameTableTwo.SALARY AS 'Salário funcionário 2',
sameTableTwo.PHONE_NUMBER AS 'Telefone funcionário 1'
FROM hr.employees AS sameTableOne, hr.employees AS sameTableTwo
WHERE sameTableOne.JOB_ID = sameTableTwo.JOB_ID
ORDER BY 1, 2;
