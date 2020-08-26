SELECT job_title AS 'Cargo',
  ROUND(AVG(salary), 2) AS 'Média salarial',
  CASE
    WHEN AVG(salary) > 10500 THEN 'CEO'
    WHEN AVG(salary) >= 7501 THEN 'Sênior'
    WHEN AVG(salary) >= 5801 THEN 'Pleno'
    WHEN AVG(salary) >= 2000 THEN 'Júnior'
  END AS 'Senioridade'
FROM hr.jobs AS j
  JOIN hr.employees AS e ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY `Média salarial`,
  job_title;
