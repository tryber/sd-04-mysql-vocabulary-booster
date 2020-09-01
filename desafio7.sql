SELECT
  UPPER(CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME)) AS "Nome completo",
  jobs.JOB_TITLE AS "Cargo",
  DATE(history.START_DATE) AS "Data de início",
  employees.SALARY AS "Salário	"
FROM
  hr.job_history AS history
  INNER JOIN hr.jobs AS jobs ON (history.JOB_ID = jobs.JOB_ID)
  INNER JOIN hr.employees AS employees ON (history.JOB_ID = employees.JOB_ID)
  WHERE MONTH(history.START_DATE) IN ("1", "2", "3")
ORDER BY
  "Nome completo",
  Cargo;