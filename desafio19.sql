USE hr;

DELIMITER 
DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25)) 
BEGIN
SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  d.department_name AS Departamento,
  j.job_title AS Cargo
FROM
  hr.job_history AS jh
  INNER JOIN hr.employees AS e ON (e.employee_id = jh.employee_id)
  INNER JOIN hr.departments AS d ON (d.department_id = jh.department_id)
  INNER JOIN hr.jobs AS j ON (j.job_id = jh.job_id)
WHERE
  e.email = email
ORDER BY
  Departamento,
  Cargo;
END DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
