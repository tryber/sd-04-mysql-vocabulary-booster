-- DESAFIO 3

SELECT job_title AS Cargo, (MAX(max_salary) - MIN(min_salary)) AS 'Diferença entre salários máximo e mínimo' FROM hr.jobs
GROUP BY job_title ORDER BY (MAX(max_salary) - MIN(min_salary)), job_title;
