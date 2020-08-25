SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome Completo',
  j.job_title AS Cargo,
  DATE(h.start_date) AS 'Data de início do cargo',
  department_name AS Departamento
FROM
  hr.job_history AS h
  INNER JOIN hr.employees AS e ON (e.employee_id = h.employee_id)
  INNER JOIN hr.jobs AS j ON (j.job_id = h.job_id)
  INNER JOIN hr.departments AS d ON (d.department_id = h.department_id)
ORDER BY
  CONCAT(e.first_name, ' ', e.last_name) DESC,
  Cargo;
