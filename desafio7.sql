SELECT
UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
em.SALARY AS `Salário`
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
