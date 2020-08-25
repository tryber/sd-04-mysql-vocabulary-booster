SELECT UCASE(CONCAT(em.first_name, ' ', em.last_name)) AS 'Nome completo',
hs.start_date AS 'Data de início',
em.salary AS 'Salário'
FROM hr.employees AS em
INNER JOIN hr.job_history AS hs
ON hs.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(hs.START_DATE) IN ( 01,02,03 )
ORDER BY `Nome completo`, `Data de início`;
