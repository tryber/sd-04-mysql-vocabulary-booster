SELECT 
    J.JOB_TITLE AS `Cargo`,
    (J.MAX_SALARY - J.MIN_SALARY) AS `Variação Salarial`,
    ROUND(J.MIN_SALARY / 12, 2) `Média mínima mensal`,
    ROUND(J.MAX_SALARY / 12, 2) `Média máxima mensal`
FROM
    hr.employees AS E
        LEFT JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Variação Salarial` , J.JOB_TITLE;
