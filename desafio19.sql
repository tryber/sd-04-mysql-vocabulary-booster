USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN searchEmail VARCHAR(100))
BEGIN
SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
  department_name AS 'Departamento',
  job_title AS 'Cargo'
FROM hr.job_history AS h
  JOIN hr.employees AS e ON h.employee_id = e.employee_id
  JOIN hr.departments AS d ON d.department_id = h.department_id
  JOIN hr.jobs AS j ON j.job_id = h.job_id
WHERE email = searchEmail
ORDER BY department_name, job_title;
END $$

DELIMITER ;
