-- DESAFIO 5

SELECT job_title AS Cargo,
(MAX(max_salary) - MIN(min_salary)) AS 'Variação Salarial',
ROUND(AVG(min_salary / 12), 2) AS 'Média mínima mensal',
ROUND(AVG(max_salary / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY job_title ORDER BY (MAX(max_salary) - MIN(min_salary)), job_title;
