SELECT jb.JOB_TITLE AS `Cargo`, ROUND(AVG(em.SALARY),2) AS `Média salarial`, CASE
        WHEN AVG(em.SALARY) > 10500 THEN 'CEO'
        WHEN AVG(em.SALARY) >= 7501 THEN 'Sênior'
        WHEN AVG(em.SALARY) >= 5801 THEN 'Pleno'
        ELSE 'Júnior'
    END AS `Senioridade`
FROM hr.employees as em
INNER JOIN hr.jobs as jb
ON em.JOB_ID=jb.JOB_ID
GROUP BY jb.JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;
