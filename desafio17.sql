-- Função de converter data retirada da fonte: https://www.w3schools.com/sql/func_mysql_date_format.asp;
-- Função DATEDIFF retirada da fonte: https://www.w3schools.com/sql/func_mysql_datediff.asp;

SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jh.START_DATE, "%d/%m%/%Y") AS `Data de início`,
DATE_FORMAT(jh.END_DATE, "%d/%m%/%Y") AS `Data de rescisão`,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jh
ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
