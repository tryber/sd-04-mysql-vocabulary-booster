SELECT J.JOB_TITLE AS 'Cargo', J.MAX_SALARY,
    CASE
        WHEN J.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN J.MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN J.MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
        WHEN J.MAX_SALARY > 30000 THEN 'Altíssimo'
    END
FROM jobs AS J
ORDER BY J.JOB_TITLE;
