SELECT 
	CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo funcionário 1`,
    em.SALARY AS `Salário funcionário 1`,
    em.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(ep.FIRST_NAME, ' ', ep.LAST_NAME) AS `Nome completo funcionário 2`,
    ep.SALARY AS `Salário funcionário 2`,
    ep.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS em, hr.employees AS ep
WHERE em.EMPLOYEE_ID <> ep.EMPLOYEE_ID
AND em.JOB_ID = ep.JOB_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
