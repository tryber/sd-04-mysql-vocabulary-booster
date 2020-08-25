SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
  jobs.JOB_TITLE AS Cargo,
  jh.START_DATE AS 'Data de início do cargo',
  Dep.DEPARTMENT_NAME AS Departamento
FROM
  hr.employees AS emp,
  hr.jobs AS jobs,
  hr.job_history AS jh,
  hr.departments AS Dep
WHERE
  jh.EMPLOYEE_ID = emp.EMPLOYEE_ID AND jh.DEPARTMENT_ID = Dep.DEPARTMENT_ID AND
  jh.JOB_ID = jobs.JOB_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, Cargo ASC;
