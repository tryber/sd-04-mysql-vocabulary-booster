SELECT JOB_TITLE AS Cargo, (MAX_SALARY - MIN_SALARY) AS `Diferença entre salários máximo e mínimo`,
ROUND((MIN_SALARY / 12), 2) AS `Média mínima mensal`, ROUND((MAX_SALARY / 12), 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, Cargo;
