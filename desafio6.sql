SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
  job_title AS Cargo,
  hire_date AS 'Data de início do cargo',
  department_name AS 'Departamento'
FROM hr.job_history AS his
  JOIN hr.jobs AS job ON job.job_id = his.job_id
  JOIN hr.departments AS dep ON dep.department_id = his.department_id
  JOIN hr.employees AS emp ON emp.employee_id = his.employee_id
ORDER BY `Nome completo` DESC,
  job_title ASC;
