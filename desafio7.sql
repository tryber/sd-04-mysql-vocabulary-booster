SELECT 
    UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) `Nome completo`,
    jh.START_DATE `Data de início do cargo`,
    e.SALARY `Salário`
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        AND MONTH(jh.START_DATE) <= (3)
ORDER BY `Nome completo` ASC , `Data de início do cargo` ASC;
