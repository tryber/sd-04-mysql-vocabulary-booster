SELECT 
    J.JOB_TITLE AS `Cargo`,
    (J.MAX_SALARY - J.MIN_SALARY) AS `Variação Salarial`,
    ROUND(AVG(J.MIN_SALARY), 2) `Média mínima mensal`,
    ROUND(AVG(J.MAX_SALARY), 2) `Média máxima mensal`
FROM
    hr.jobs AS J
        LEFT JOIN
    hr.employees AS E ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Variação Salarial` , J.JOB_TITLE;
