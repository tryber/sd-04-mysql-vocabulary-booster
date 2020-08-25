SELECT JOB_TITLE AS Cargo,
  (
    SELECT ROUND(AVG(SALARY), 2)
    FROM hr.employees
    WHERE employees.JOB_ID = jobs.JOB_ID
    GROUP BY JOB_ID
  ) AS 'Média salarial',
  CASE
    WHEN 'Média salarial' BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN 'Média salarial' BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN 'Média salarial' BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS Senioridade
FROM hr.jobs
ORDER BY 'Média salarial' ASC,
  cargo ASC;
