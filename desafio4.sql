-- requisito 4

-- REPENSAR PQ NÂO FUNCIONA

-- SELECT jobs.job_title AS 'Cargo',
-- employees.salary AS 'Média salarial',
-- CASE
-- WHEN ROUND(AVG(employees.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
-- WHEN ROUND(AVG(employees.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
-- WHEN ROUND(AVG(employees.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
-- WHEN ROUND(AVG(employees.salary), 2) > 10500 THEN 'CEO'
-- END AS 'Senioridade'
-- FROM hr.jobs
-- INNER JOIN hr.employees ON jobs.job_id = employees.job_id
-- GROUP BY jobs.job_title 
-- ORDER BY `Média Salarial`, Cargo;
