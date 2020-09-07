SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    jh.START_DATE 'Data de início',
    jh.END_DATE 'Data de rescisão',
    (YEAR(jh.END_DATE) - YEAR(jh.START_DATE)) 'Anos trabalhados'
FROM
    hr.job_history jh
    INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC,
    (YEAR(jh.END_DATE) - YEAR(jh.START_DATE)) ASC;
