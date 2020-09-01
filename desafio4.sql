SELECT
  jobs.JOB_TITLE AS "Cargo",
  ROUND(AVG(employees.SALARY), 2) AS "Média salarial",
  CASE
    WHEN ROUND(AVG(employees.SALARY), 2) > 10500 THEN "CEO"
    WHEN ROUND(AVG(employees.SALARY), 2) > 7500 THEN "Sênior"
    WHEN ROUND(AVG(employees.SALARY), 2) > 5800 THEN "Pleno"
    WHEN ROUND(AVG(employees.SALARY), 2) >= 2000 THEN "Junior"
  END AS "Senioridade"
FROM
  hr.jobs AS jobs
  INNER JOIN hr.employees AS employees ON (jobs.JOB_ID = employees.JOB_ID)
GROUP BY
  jobs.JOB_ID
ORDER BY
  `Média salarial`,
  Cargo;
