SELECT t1.JOB_TITLE AS 'Cargo',
ROUND(AVG(t2.Salary)) AS 'Média salarial',
CASE
WHEN ROUND(AVG(t2.Salary)) > 2000 AND ROUND(AVG(t2.Salary)) < 5800 THEN 'Júnior'
WHEN ROUND(AVG(t2.Salary)) > 5801 AND ROUND(AVG(t2.Salary)) < 7500 THEN 'Pleno'
WHEN ROUND(AVG(t2.Salary)) > 7501 AND ROUND(AVG(t2.Salary)) < 10500 THEN 'Sênior'
WHEN ROUND(AVG(t2.Salary)) > 10501 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS t1
INNER JOIN hr.employees AS t2
ON t2.JOB_ID = t1.JOB_ID
GROUP BY t1.JOB_TITLE
ORDER BY ROUND(AVG(t2.Salary)), t1.JOB_TITLE;
