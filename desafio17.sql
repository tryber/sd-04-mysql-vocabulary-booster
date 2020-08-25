SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(job.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(job.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(job.END_DATE , job.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM  hr.employees AS em
INNER JOIN hr.job_history as job
ON em.employee_id = job.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
