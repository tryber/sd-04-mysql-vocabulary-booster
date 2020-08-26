SELECT UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
em.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.jobs AS jb
ON jh.JOB_ID=jb.JOB_ID
INNER JOIN hr.employees AS em
ON em.EMPLOYEE_ID=jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03) 
ORDER BY `Nome completo`, `Data de início`;
