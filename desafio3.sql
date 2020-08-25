select job_title as Cargo, (max_salary - min_salary) as 'Diferença entre salários máximo e mínimo' from jobs order by 2, 1;
