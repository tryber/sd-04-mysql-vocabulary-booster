SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
e.SALARY AS `Salário funcionário 1`,
e.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo funcionário 2`,
em.SALARY AS `Salário funcionário 2`,
em.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS e
INNER JOIN hr.employees AS em ON em.JOB_ID = e.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
