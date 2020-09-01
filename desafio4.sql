SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(employees.salary), 2) AS 'Média salarial',
CASE
WHEN AVG(employees.salary) > 10500 THEN 'CEO'
WHEN AVG(employees.salary) >= 7501 THEN 'Sênior'
WHEN AVG(employees.salary) >= 5801 THEN 'Pleno'
WHEN AVG(employees.salary) >= 2000 THEN 'Júnior'
END AS 'Senioridade'
FROM hr.jobs AS jobs
JOIN hr.employees AS employees
ON jobs.JOB_ID = employees.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY 'Média salarial', 'Cargo';
