SELECT
	CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo`,
	DATE_FORMAT(jb.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(jb.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
	ROUND(DATEDIFF(jb.END_DATE, jb.START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.job_history as jb
INNER JOIN hr.employees as em
ON jb.EMPLOYEE_ID = em.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
