SELECT jobs.JOB_TITLE AS "Cargo", ROUND(AVG(employees.SALARY)) AS "Média salarial"
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees ON (jobs.JOB_ID = employees.JOB_ID)
GROUP BY jobs.JOB_ID
ORDER BY `Média salarial`, Cargo;