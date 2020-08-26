SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    start_date AS 'Data de início',
    salary AS Salário
FROM
    employees e
        JOIN
    job_history j ON e.employee_id = j.employee_id
WHERE
    MONTH(j.start_date) IN (1 , 2, 3)
ORDER BY `Nome completo` , `Data de início`;
