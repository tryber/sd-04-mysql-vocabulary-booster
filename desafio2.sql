SELECT 
    job_title AS Cargo,
    CASE
        WHEN MAX_salary BETWEEN 0 AND 10000 THEN 'Baixo'
        WHEN MAX_salary BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN MAX_salary BETWEEN 20001 AND 30000 THEN 'Alto'
        WHEN MAX_salary > 30000 THEN 'Altíssimo'
    END AS Nível
FROM
    jobs
ORDER BY Cargo;

    