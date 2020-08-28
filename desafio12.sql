SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo funcionário 1`,
    E.SALARY AS `Salário funcionário 1`,
    E.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(Eseg.FIRST_NAME, ' ', Eseg.LAST_NAME) AS `Nome completo funcionário 2`,
    Eseg.SALARY AS `Salário funcionário 2`,
    Eseg.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    hr.employees AS E
        JOIN
    hr.employees AS Eseg ON Eseg.JOB_ID = E.JOB_ID
        AND CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) <> CONCAT(Eseg.FIRST_NAME, ' ', Eseg.LAST_NAME)
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`
