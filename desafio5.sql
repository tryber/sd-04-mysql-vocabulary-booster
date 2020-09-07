SELECT 
    job.JOB_TITLE AS 'Cargo',
    job.MAX_SALARY - job.MIN_SALARY AS `Variação Salarial`,
    ROUND(job.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(job.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.jobs AS job
ORDER BY `Variação Salarial` ASC , Cargo;
