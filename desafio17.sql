USE hr;
DELIMITER $$

CREATE FUNCTION data_brasileira(data_gringa DATE)
RETURNS VARCHAR(20) READS SQL DATA
BEGIN
RETURN 
    CASE
        WHEN
            DAY(data_gringa) < 10
                AND MONTH(data_gringa) < 10
        THEN
            CONCAT(0,
                    DAY(data_gringa),
                    '/',
                    0,
                    MONTH(data_gringa),
                    '/',
                    YEAR(data_gringa))
        WHEN
            DAY(data_gringa) < 10
        THEN
            CONCAT(0,
                    DAY(data_gringa),
                    '/',
                    MONTH(data_gringa),
                    '/',
                    YEAR(data_gringa))
        WHEN
            MONTH(data_gringa) < 10
        THEN
            CONCAT(DAY(data_gringa),
                    '/',
                    0,
                    MONTH(data_gringa),
                    '/',
                    YEAR(data_gringa))
        ELSE CONCAT(DAY(data_gringa),
                '/',
                MONTH(data_gringa),
                '/',
                YEAR(data_gringa))
    END;
END $$

DELIMITER ;
# usando uma função e data format pra converter datas
SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    (DATE_FORMAT(START_DATE, '%d/%m/%Y')) AS 'Data de início',
    (SELECT DATA_BRASILEIRA(END_DATE)) AS 'Data de rescisão',
    ROUND(DATEDIFF(END_DATE,START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
    job_history jh
        JOIN
    employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
