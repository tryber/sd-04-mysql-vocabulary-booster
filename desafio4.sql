SELECT J.JOB_TITLE AS 'Cargo',
    (J.MAX_SALARY - J.MIN_SALARY) as 'Diferença entre salários máximo e mínimo'
FROM jobs AS J
ORDER BY `Diferença entre salários máximo e mínimo`,
    J.JOB_TITLE;
