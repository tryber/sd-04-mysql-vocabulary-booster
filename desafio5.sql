SELECT DISTINCT J.JOB_TITLE Cargo, (J.MAX_SALARY - J.MIN_SALARY) 'Variação Salarial', ROUND((J.MIN_SALARY / 12), 2) 'Média mínima mensal', ROUND((J.MAX_SALARY / 12), 2) 'Média máxima mensal'
FROM hr.jobs J
INNER JOIN hr.employees E on E.JOB_ID = J.JOB_ID
ORDER BY (J.MAX_SALARY - J.MIN_SALARY), Cargo;
