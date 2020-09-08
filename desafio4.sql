SELECT JOB_TITLE as Cargo, (MAX_SALARY - MIN_SALARY) as `Variação Salarial`,
round((MIN_SALARY / 12), 2) as `Média mínima mensal`, round((MAX_SALARY / 12), 2) as `Média máxima mensal`
from hr.jobs
order by `Variação Salarial`, Cargo;
