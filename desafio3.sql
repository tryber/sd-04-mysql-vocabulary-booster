SELECT J.JOB_TITLE Cargo, (J.MAX_SALARY - J.MIN_SALARY) as 'Diferença entre salários máximo e mínimo'
FROM hr.jobs J
order by (J.MAX_SALARY - J.MIN_SALARY), Cargo;
