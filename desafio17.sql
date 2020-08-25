SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(job.START_DATE), '/', MONTH(job.START_DATE), '/', YEAR(job.START_DATE)) AS 'Data de início',
CONCAT(DAY(job.END_DATE), '/', MONTH(job.END_DATE), '/', YEAR(job.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(job.END_DATE , job.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM  hr.employees AS em
INNER JOIN hr.job_history as job
ON em.employee_id = job.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
