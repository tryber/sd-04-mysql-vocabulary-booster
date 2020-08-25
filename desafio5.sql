SELECT job_title AS Cargo,
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
ROUND(MIN_SALARY DIV 12, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY DIV 12, 2) AS 'Média máxima mensal'
FROM hr.jobs as job
ORDER BY (max_salary - min_salary), Cargo;
