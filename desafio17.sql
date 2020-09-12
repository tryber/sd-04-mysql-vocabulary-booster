SELECT
(
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
FROM hr.employees
WHERE EMPLOYEE_ID = j.EMPLOYEE_ID
) AS `Nome completo`,
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS j
HAVING `Nome completo` IS NOT NULL
ORDER BY `Nome completo`, `Anos trabalhados`; -- Excluding subquery's null values ("leftovers")
-- I preferred to use subquery (~4.7 query cost) over JOIN method (~17.5 query cost)
