USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS "Nome completo",
  dep.DEPARTMENT_NAME AS "Departamento",
  job.JOB_TITLE AS "Cargo"
  FROM hr.employees AS emp
  INNER JOIN hr.job_history AS hist
  ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
  INNER JOIN hr.departments AS dep
  ON hist.DEPARTMENT_ID = dep.DEPARTMENT_ID
  INNER JOIN hr.jobs AS job
  ON hist.JOB_ID = job.JOB_ID
  WHERE emp.EMAIL = email
  ORDER BY Cargo;
END $$
DELIMITER ;
