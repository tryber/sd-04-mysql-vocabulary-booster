SELECT J.JOB_TITLE AS 'Cargo',
    (J.MAX_SALARY - J.MIN_SALARY) as 'Diferença entre salários máximo e mínimo'
FROM jobs AS J
ORDER BY (J.MAX_SALARY - J.MIN_SALARY),
    J.JOB_TITLE;
