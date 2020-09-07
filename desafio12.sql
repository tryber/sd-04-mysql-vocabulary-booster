SELECT 
    CONCAT(mainEmp.FIRST_NAME,
            ' ',
            mainEmp.LAST_NAME) AS `Nome completo funcionário 1`,
    mainEmp.SALARY AS 'Salário funcionário 1',
    mainEmp.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(subEmp.FIRST_NAME, ' ', subEmp.LAST_NAME) AS `Nome completo funcionário 2`,
    subEmp.SALARY AS 'Salário funcionário 2',
    subEmp.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS mainEmp,
    hr.employees AS subEmp
WHERE
    subEmp.EMPLOYEE_ID <> mainEmp.EMPLOYEE_ID
        AND subEmp.JOB_ID = mainEmp.JOB_ID
ORDER BY `Nome completo funcionário 1` ASC , `Nome completo funcionário 2` ASC;
