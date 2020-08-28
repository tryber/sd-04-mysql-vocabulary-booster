SELECT job_title as Cargo, (max_salary - min_salary) as `Diferença entre salários máximo e mínimo`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, Cargo;
