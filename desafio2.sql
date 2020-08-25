SELECT
  job_title AS Cargo,
  CASE
    WHEN max_salary > 30000 THEN 'Altíssimo'
    WHEN max_salary > 20000 THEN 'Alto'
    WHEN max_salary > 10000 THEN 'Médio'
    WHEN max_salary >= 5000 THEN 'Baixo'
  END AS Nível
FROM
  hr.jobs
ORDER BY
  Cargo;
