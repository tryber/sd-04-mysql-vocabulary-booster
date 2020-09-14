SELECT
  CONCAT(employees.first_name, ' ', employees.last_name) AS "Nome completo",
  DATE_FORMAT(jobHistory.start_date, '%d/%m/%Y') AS "Data de início",
  DATE_FORMAT(jobHistory.end_date, '%d/%m/%Y') AS "Data de rescisão",
  ROUND(
    DATEDIFF(jobHistory.end_date, jobHistory.start_date) / 365,
    2
  ) AS "Anos trabalhados"
FROM
  hr.job_history AS jobHistory
  INNER JOIN hr.employees AS employees ON (employees.employee_id = jobHistory.employee_id)
ORDER BY
  `Nome completo`,
  `Anos trabalhados`;
