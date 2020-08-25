-- Os resultados devem estar ordenados pela média salarial em ordem crescente.
-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética. 
SELECT * FROM hr.jobs;
SELECT 
    J.JOB_TITLE AS Cargo, ROUND(AVG(E.SALARY), 2) AS 'Média Salarial',
    CASE 
		    WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Pleno'
        ELSE 'CEO'
        END AS 'Senioridade'
FROM
    hr.jobs AS J
        INNER JOIN
    hr.employees AS E ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_TITLE ORDER BY 'Média Salarial', Cargo;