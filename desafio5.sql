SELECT
  JOB_TITLE AS `Cargo`,
  ROUND((MAX_SALARY - MIN_SALARY),2) AS `Variação Salarial`,
  MIN_SALARY / 12 AS `Média mínima mensal`,
  MAX_SALARY / 12 AS `Média máxima mensal`
FROM
  hr.jobs
ORDER BY `Variação Salarial`, `Cargo`;
