SELECT job_Title AS 'Cargo', max_salary - min_salary
AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY 2, 1;
