SELECT job_title as Cargo,
      max_salary,
    CASE
        WHEN max_salary <= 10000 THEN 'Baixo'
        WHEN max_salary <= 20000 THEN 'Medio'
        WHEN max_salary <= 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS Nível
FROM hr.jobs
ORDER BY Cargo;
