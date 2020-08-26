SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    (SELECT 
            job_title
        FROM
            jobs j
        WHERE
            j.JOB_ID = e.JOB_ID) AS Cargo,
    HIRE_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            departments AS d
        WHERE
            d.DEPARTMENT_ID = e.DEPARTMENT_ID) AS Departamento
FROM
    hr.employees AS e
ORDER BY `Nome completo` DESC , Cargo;
