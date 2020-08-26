SELECT CONCAT(a.first_name, ' ', a.last_name) AS 'Nome completo funcionário 1',
  a.salary AS 'Salário funcionário 1',
  a.phone_number AS 'Telefone funcionário 1',
  CONCAT(b.first_name, ' ', b.last_name) AS 'Nome completo funcionário 2',
  b.salary AS 'Salário funcionário 2',
  b.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS a,
  hr.employees AS b
  JOIN hr.jobs AS j ON j.job_id = b.job_id
WHERE a.job_id = b.job_id
  AND CONCAT(a.first_name, ' ', a.last_name) <> CONCAT(b.first_name, ' ', b.last_name)
ORDER BY `Nome completo funcionário 1`,
  `Nome completo funcionário 2`
