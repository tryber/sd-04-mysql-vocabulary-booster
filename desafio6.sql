SELECT
    CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
    (SELECT jo.JOB_TITLE FROM hr.jobs AS jo WHERE jo.JOB_ID = jh.JOB_ID) AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    (SELECT de.DEPARTMENT_NAME FROM hr.departments AS de WHERE de.DEPARTMENT_ID = jh.DEPARTMENT_ID) AS Departamento
FROM hr.job_history AS jh
INNER JOIN hr.employees AS em ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(em.FIRST_NAME, ' ',em.LAST_NAME) DESC, Cargo;
