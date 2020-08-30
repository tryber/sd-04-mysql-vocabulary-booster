SELECT 
    J.JOB_TITLE AS `Cargo`,
    (J.MAX_SALARY - J.MIN_SALARY) AS `Variação Salarial`,
    ROUND(J.MIN_SALARY / 12, 2) `Média mínima mensal`,
    ROUND(J.MAX_SALARY / 12, 2) `Média máxima mensal`
FROM
    hr.jobs AS J
ORDER BY `Variação Salarial` , J.JOB_TITLE;
