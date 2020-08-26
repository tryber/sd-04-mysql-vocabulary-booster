SELECT jb.JOB_TITLE AS `Cargo`, 
ROUND(jb.MAX_SALARY-jb.MIN_SALARY, 2) AS `Variação Salarial`, 
ROUND((jb.MIN_SALARY/12),2) AS `Média mínima mensal`,
ROUND((jb.MAX_SALARY/12),2) AS `Média máxima mensal`
FROM hr.employees as em
INNER JOIN hr.jobs as jb
ON em.JOB_ID=jb.JOB_ID
GROUP BY jb.JOB_TITLE
ORDER BY `Variação Salarial`, `Cargo`;
