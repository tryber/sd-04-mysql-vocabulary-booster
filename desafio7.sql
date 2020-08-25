SELECT 
    UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
    history.start_date AS `Data de início`,
    employees.salary AS 'Salário'
FROM
    hr.employees AS employees
        INNER JOIN
    job_history AS history ON employees.employee_id = history.employee_id
WHERE
    MONTH(history.start_date) IN ( 1 , 2, 3)
ORDER BY `Nome completo` , `Data de início`;
