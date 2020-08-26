-- requisito 7

-- Concatena para formar Coluna Nome completo
-- renomeia coluna START_DATE na tabela join_history
-- renomeia coluna SALARY na tabela employees
-- Combina coluna EMPLOYEE_ID das tabelas employees e job_history 
-- Ordena (month) de forma crescente para ser usado posteriormente
-- Ordena por `Nome completo` em depois por month (crescente)
SELECT UCASE(
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)
) AS 'Nome completo',
job_history.START_DATE AS 'Data de início',
employees.SALARY AS Salário
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) IN ('01', '02', '03')
-- Backticks (``) para referenciar como coluna e não como string
ORDER BY `Nome completo` ASC, job_history.START_DATE ASC;
