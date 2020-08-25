SELECT job.JOB_TITLE AS Cargo,
ROUND(AVG(emp.SALARY), 2) AS 'Média Salarial',
CASE
WHEN AVG(emp.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(emp.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(emp.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(emp.SALARY) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs job
JOIN hr.employees emp
ON job.JOB_ID = emp.JOB_ID
GROUP BY emp.JOB_ID
ORDER BY AVG(emp.SALARY), Cargo;
