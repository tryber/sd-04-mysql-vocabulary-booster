select JOB_TITLE Cargo, (
j.MAX_SALARY - j.MIN_SALARY
) "Diferença entre salários máximo e mínimo"
from hr.jobs j
order by (j.MAX_SALARY - j.MIN_SALARY), Cargo;
