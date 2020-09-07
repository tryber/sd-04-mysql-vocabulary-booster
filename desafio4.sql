SELECT 
    job.JOB_TITLE AS 'Cargo',
    ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(emp.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(emp.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(emp.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(emp.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.jobs AS job ON job.JOB_ID = emp.JOB_ID
GROUP BY job.JOB_TITLE
ORDER BY AVG(emp.SALARY) ASC , job.JOB_TITLE ASC;
