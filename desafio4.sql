SELECT job.job_title AS Cargo,
ROUND(AVG(em.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(em.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(em.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(em.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM hr.jobs as job
INNER JOIN hr.employees as em
ON job.job_id = em.job_id
GROUP BY job_title
ORDER BY `Média salarial`, Cargo;
