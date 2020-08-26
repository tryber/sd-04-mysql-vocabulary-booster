SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jh.START_DATE, '%d/%m/%y') AS `Data de início`,
DATE_FORMAT(jh.END_DATE, '%d/%m/%y') AS `Data de rescisão`,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS `Anos trabalhados`
FROM 
hr.employees AS emp,
hr.job_history AS jh
WHERE (jh.EMPLOYEE_ID = emp.EMPLOYEE_ID)
ORDER BY `Nome completo`, `Anos trabalhados`;

-- FROM hr.employees AS emp
-- JOIN hr.job_history AS jh
-- ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
-- ORDER BY `Nome completo`;
