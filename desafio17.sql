SELECT
  CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME) AS `Nome completo`,
  DATE_FORMAT(JobHistory.START_DATE,'%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(JobHistory.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(JobHistory.END_DATE, JobHistory.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.employees AS Emp
INNER JOIN hr.job_history AS JobHistory
ON Emp.EMPLOYEE_ID = JobHistory.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
