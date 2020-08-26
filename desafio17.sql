SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  jh.end_date AS 'Data de recisão',
  ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS 'Anos trabalhados'
FROM
  hr.job_history AS jh
  INNER JOIN hr.employees AS e ON (e.employee_id = jh.employee_id)
ORDER BY
  `Nome completo`,
  `Anos trabalhados`;
