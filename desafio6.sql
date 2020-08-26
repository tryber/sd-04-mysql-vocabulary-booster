-- requisito 6

-- Concatena as colunas FIRT e LAST_NAME da tabela employees e renomeia para Nome Completo
-- Renomeia coluna JOB_TITLE da tabela 'jobs' para Cargo
-- Renomia coluna START_DATE da tabela 'job_history' para Data de Início do cargo
-- Renomeia coluna DEPARTMENT_NAME na tabela 'departments' para Departamento
-- Combina dados (inner join - on) da coluna JOB_ID das tabelas jobs e job_history
-- Combina dados da coluna EMPLOYEE_ID das tabelas employees e job_history
-- Combina dados da coluna DEPARTMENT_ID das tabelas job_history e departaments
-- Ordena descrescente por Nome Completo e ascendente por Cargo
SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
job_history.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS job_history
INNER JOIN hr.jobs AS jobs ON job_history.JOB_ID = jobs.JOB_ID
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INNER JOIN hr.departments AS departments ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
-- usa-se `Nome completo` para identificar como coluna e não como string ('') para poder ordenar
ORDER BY `Nome completo` DESC , Cargo;
