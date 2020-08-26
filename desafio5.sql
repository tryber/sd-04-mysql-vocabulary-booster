SELECT 
    JOB_TITLE AS Cargo,
    (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(min_salary / 12, 2) AS 'Média mínima mensal',
    ROUND(max_salary / 12, 2) AS 'Média máxima mensal'
FROM
    jobs
ORDER BY `Variação Salarial` , Cargo;
