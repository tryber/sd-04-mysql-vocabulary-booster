CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(200))
BEGIN
  SELECT
    CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME) AS 'Nome completo',
    Dep.DEPARTMENT_NAME AS Departamento,
    Jobs.JOB_TITLE AS Cargo
  FROM hr.employees AS Emp
  INNER JOIN hr.departments AS Dep
  ON Emp.DEPARTMENT_ID = Dep.DEPARTMENT_ID
  INNER JOIN hr.jobs AS Jobs
  ON Emp.JOB_ID = Jobs.JOB_ID
  INNER JOIN hr.job_history AS JobHistory
  ON Emp.EMPLOYEE_ID = JobHistory.EMPLOYEE_ID
  WHERE Emp.EMAIL = employee_email
  ORDER BY Departamento ASC, Cargo ASC;
END $$
