SELECT 
    (SELECT 
            job_title
        FROM
            jobs j
        WHERE
            j.JOB_ID = e.JOB_ID) AS Cargo,
    ROUND(AVG(salary), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(salary), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    employees e
GROUP BY Cargo
ORDER BY ROUND(AVG(salary), 2);
