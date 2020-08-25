SELECT job_title as Cargo,
CASE
WHEN max_salary > 4999 AND max_salary < 10001 THEN 'Baixo'
WHEN max_salary < 20001 THEN 'Médio'
WHEN max_salary < 30001 THEN 'Alto'
WHEN max_salary > 30000 THEN 'Altíssimo'
END AS Nível
FROM hr.jobs
ORDER BY job_title ASC;
