SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS Departamento
FROM
    job_history AS jh
        JOIN
    jobs AS j ON j.JOB_ID = jh.JOB_ID
        JOIN
    employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo;

#custo menor com subqueries mas apareceu uma linha a mais no final
/*SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            employees e
        WHERE
            e.EMPLOYEE_ID = jh.EMPLOYEE_ID) AS 'Nome completo',
    (SELECT 
            job_title
        FROM
            jobs j
        WHERE
            j.JOB_ID = jh.JOB_ID) AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            departments AS d
        WHERE
            d.DEPARTMENT_ID = jh.DEPARTMENT_ID) AS Departamento
FROM
    job_history AS jh
ORDER BY `Nome completo` DESC , Cargo;*/
