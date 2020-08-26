CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(200))
BEGIN
  SELECT
    CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME) AS 'Nome completo',
    Dep.DEPARTMENT_NAME AS Departamento,
    Jobs.JOB_TITLE AS Cargo
  FROM hr.job_history AS JobHistory
  INNER JOIN hr.employees AS Emp
  ON JobHistory.EMPLOYEE_ID = Emp.EMPLOYEE_ID
  INNER JOIN hr.departments AS Dep
  ON JobHistory.DEPARTMENT_ID = Dep.DEPARTMENT_ID
  INNER JOIN hr.jobs AS Jobs
  ON JobHistory.JOB_ID = Jobs.JOB_ID
  WHERE Emp.EMAIL = employee_email;
END $$
