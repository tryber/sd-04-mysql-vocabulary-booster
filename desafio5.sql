SELECT JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) as 'Variação Salarial',
    ROUND((min_salary / 12), 2) as 'Média mínima mensal',
    ROUND((max_salary / 12), 2) as 'Média máxima mensal'
FROM jobs
ORDER BY `Variação Salarial`,
    JOB_TITLE;
