SELECT 
    CONCAT(UCASE(E.FIRST_NAME),
            ' ',
            UCASE(E.LAST_NAME)) AS `Nome Completo`,
    H.START_DATE AS `Data de início`,
    E.SALARY AS 'Salário'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
ORDER BY `Nome completo` , `Data de início`;
