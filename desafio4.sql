-- DESAFIO 4

SELECT job_title as Cargo, ROUND(AVG(salary), 2) as 'Média salarial',
CASE
WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.job_id = E.job_id
GROUP BY job_title ORDER BY AVG(salary), job_title;
