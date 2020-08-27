SELECT
    (SELECT
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID) AS `Nome completo`,
        DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data de início`,
        DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
        ROUND((END_DATE - START_DATE) / 8760, 2) AS `Anos trabalhados`
FROM
    hr.job_history
WHERE YEAR(START_DATE) <> 0;
