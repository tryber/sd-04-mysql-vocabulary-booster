SELECT
    CONCAT(UPPER(e.FIRST_NAME), ' ', UPPER(e.LAST_NAME)) AS 'Nome completo',
    h.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
    INNER JOIN hr.job_history h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
    INNER JOIN hr.jobs j ON h.JOB_ID = j.JOB_ID
WHERE
    MONTH(h.START_DATE) IN (1, 2, 3)
ORDER BY
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC,
    h.START_DATE ASC;
