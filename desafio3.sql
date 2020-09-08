select J.JOB_TITLE Cargo, (J.MAX_SALARY - J.MIN_SALARY) as 'Diferença entre salários máximo e mínimo'
from hr.jobs J
order by (J.MAX_SALARY - J.MIN_SALARY), Cargo;
