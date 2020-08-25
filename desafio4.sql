SELECT JOB_TITLE 'Cargo', 
(SELECT ROUND(AVG(SALARY), 2) FROM hr.employees e WHERE e.JOB_ID = j.JOB_ID) 'Média salarial',
CASE 
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees e WHERE e.JOB_ID = j.JOB_ID) BETWEEN 2000 AND 5800 THEN 'Baixo'
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees e WHERE e.JOB_ID = j.JOB_ID) BETWEEN 5801 AND 7500 THEN 'Médio'
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees e WHERE e.JOB_ID = j.JOB_ID) BETWEEN 7501 AND 10500 THEN 'Alto'
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees e WHERE e.JOB_ID = j.JOB_ID) > 10500 THEN 'Altíssimo'
END AS 'Nível'
FROM hr.jobs j;
SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT AVG(SALARY) FROM hr.employees WHERE JOB_ID = 'IT_PROG' ;