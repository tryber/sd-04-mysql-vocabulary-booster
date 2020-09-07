SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    DATE(jh.START_DATE) 'Data de início',
    jh.END_DATE 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) 'Anos trabalhados'
FROM
    hr.job_history jh
    INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC,
    (YEAR(jh.END_DATE) - YEAR(jh.START_DATE)) ASC;
