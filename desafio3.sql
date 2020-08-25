SELECT JOB_TITLE as Cargo,
(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
from hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC;
