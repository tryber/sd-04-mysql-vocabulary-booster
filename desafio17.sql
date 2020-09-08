SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(hist.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(hist.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(hist.END_DATE, hist.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS hist ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
ORDER BY `Nome completo` ASC , `Anos trabalhados` ASC;
