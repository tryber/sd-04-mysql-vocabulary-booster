-- requisito 4


-- seleciona coluna job_title e renomeia para Cargo
-- Faz média para employees.salary e renomeia para Média salarial
-- No caso(case-end) quando (when)Media salarial atender range salarial (then)atribua tipo cargo
-- Nomeria casos como seneoridade
-- Combina coluna job_id nas tabelas jobs e employees
-- Agrupa coluna job_title
-- Ordena por coluna Média salarial e Cargo
SELECT jobs.job_title AS 'Cargo',
ROUND(AVG(employees.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(employees.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(employees.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(employees.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(employees.salary), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs
INNER JOIN hr.employees ON jobs.job_id = employees.job_id
GROUP BY jobs.job_title 
ORDER BY `Média Salarial`, Cargo;
