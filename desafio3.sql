-- DESAFIO 3

SELECT job_title AS Cargo, (max(max_salary) - min(min_salary)) AS 'Diferença entre salários máximo e mínimo' FROM hr.jobs
GROUP BY job_title ORDER BY (max(max_salary) - min(min_salary)), job_title;
