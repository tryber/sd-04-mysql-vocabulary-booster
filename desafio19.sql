USE hr;

DELIMITER $$
DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(55));
BEGIN
SELECT
  CONCAT(employees.first_name, ' ', employees.last_name) AS "Nome completo",
  departments.department_name AS "Departamento",
  jobs.job_title AS "Cargo"
FROM
  hr.job_history AS jobHistory
  INNER JOIN hr.employees AS employees ON (employees.employee_id = jobHistory.employee_id)
  INNER JOIN hr.departments AS departments ON (departments.department_id = jobHistory.department_id)
  INNER JOIN hr.jobs AS jobs ON (jobs.job_id = jobHistory.job_id)
WHERE
  e.email = email
ORDER BY
  Departamento,
  Cargo;
END DELIMITER $$ ;

CALL exibir_historico_completo_por_funcionario("NKOCHHAR");
