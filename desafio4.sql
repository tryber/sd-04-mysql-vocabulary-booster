SELECT 
  j.JOB_TITLE AS Cargo,
  ROUND(AVG(e.SALARY), 2) `Média salarial`,
  CASE 
    WHEN (ROUND(AVG(e.SALARY), 2) >= 2000 AND ROUND(AVG(e.SALARY), 2) <= 5800) THEN 'Júnior'
    WHEN (ROUND(AVG(e.SALARY), 2) >= 5801 AND ROUND(AVG(e.SALARY), 2) <= 7500) THEN 'Pleno'
    WHEN (ROUND(AVG(e.SALARY), 2) >= 7501 AND ROUND(AVG(e.SALARY), 2) <= 10500) THEN 'Sênior'
    ELSE 'CEO'
  END Senioridade
FROM
  hr.jobs AS j,
  hr.employees AS e
WHERE
  j.JOB_ID = e.JOB_ID
GROUP BY Cargo
ORDER BY 
  `Média salarial`,
  Cargo;
