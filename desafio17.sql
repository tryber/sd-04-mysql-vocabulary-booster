SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    CONCAT(
        IF(
            LENGTH(DAY(jh.START_DATE)) = 1,
            CONCAT('0', DAY(jh.START_DATE)),
            DAY(jh.START_DATE)
        ),
        '/',
        IF(
            LENGTH(MONTH(jh.START_DATE)) = 1,
            CONCAT('0', MONTH(jh.START_DATE)),
            MONTH(jh.START_DATE)
        ),
        '/',
        YEAR(jh.START_DATE)
    ) 'Data de início',
    CONCAT(
        IF(
            LENGTH(DAY(jh.END_DATE)) = 1,
            CONCAT('0', DAY(jh.END_DATE)),
            DAY(jh.END_DATE)
        ),
        '/',
        IF(
            LENGTH(MONTH(jh.END_DATE)) = 1,
            CONCAT('0', MONTH(jh.END_DATE)),
            MONTH(jh.END_DATE)
        ),
        '/',
        YEAR(jh.END_DATE)
    ) 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) 'Anos trabalhados'
FROM
    hr.job_history jh
    INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC,
    (YEAR(jh.END_DATE) - YEAR(jh.START_DATE)) ASC;
    