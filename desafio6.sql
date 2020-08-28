SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) `Nome completo`,
  j.JOB_TITLE Cargo,
  jh.START_DATE `Data de início do cargo`,
  d.DEPARTMENT_NAME `Departamento`
FROM
  hr.employees e,
  hr.job_history jh,
  hr.jobs j,
  hr.departments d
WHERE
  (e.EMPLOYEE_ID = jh.EMPLOYEE_ID) AND
  (j.JOB_ID = jh.JOB_ID) AND
  (jh.DEPARTMENT_ID = d.DEPARTMENT_ID)
ORDER BY
  `Nome completo` DESC,
  Cargo;
