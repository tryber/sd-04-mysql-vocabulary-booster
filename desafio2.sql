SELECT J.JOB_TITLE Cargo, (
CASE 
WHEN J.MAX_SALARY between 5000 and 10000 then 'Baixo'
WHEN J.MAX_SALARY between 10001 and 20000 then 'Médio'
WHEN J.MAX_SALARY between 20001 and 30000 then 'Alto'
ELSE 'Altíssimo'
end) Nível
from hr.jobs J
order by Cargo;
