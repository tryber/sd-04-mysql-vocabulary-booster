SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  DATE_FORMAT(jh.START_DATE, "%d/%m/%Y") AS `Data de início`,
  DATE_FORMAT(jh.END_DATE, "%d/%m/%Y") AS `Data de rescisão` ,
  DATEDIFF(jh.END_DATE, jh.START_DATE) DIV 365 AS `Anos trabalhados` from hr.job_history as jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
