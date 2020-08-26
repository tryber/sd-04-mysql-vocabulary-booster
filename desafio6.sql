SELECT
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
  (
    SELECT
      JOB_TITLE
    FROM
      hr.jobs
    WHERE
      jobs.JOB_ID = hr.employees.JOB_ID
  ) AS Cargo,
  HIRE_DATE AS `Data de início do cargo`,
  (
    SELECT
      DEPARTMENT_NAME
    FROM
      hr.departments
    WHERE
      departments.DEPARTMENT_ID = hr.employees.DEPARTMENT_ID
  ) AS `Departamento`
FROM
  hr.employees;
ORDER BY
  `Nome completo`,
  `Cargo`;
