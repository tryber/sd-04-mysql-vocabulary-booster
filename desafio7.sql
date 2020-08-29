SELECT
  UCASE(CONCAT(em.FIRST_NAME, ' ',em.LAST_NAME)) AS 'Nome completo',
  jh.START_DATE AS 'Data de início',
  em.SALARY AS 'Salário'
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh ON (em.employee_id = jh.employee_id)
WHERE MONTH(jh.START_DATE) IN ('01','02','03')
ORDER BY UCASE(CONCAT(em.FIRST_NAME, ' ',em.LAST_NAME)), jh.START_DATE;
