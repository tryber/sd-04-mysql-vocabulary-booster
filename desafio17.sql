SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  DATE_FORMAT(jh.start_date, '%d/%m/%y') AS 'Data de início',
  DATE_FORMAT(jh.end_date, '%d/%m/%y') AS 'Data de recisão',
  ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS 'Anos trabalhados'
FROM
  hr.job_history AS jh
  INNER JOIN hr.employees AS e ON (e.employee_id = jh.employee_id)
ORDER BY
  `Nome completo`,
  `Anos trabalhados`;
