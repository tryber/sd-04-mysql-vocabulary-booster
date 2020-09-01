SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS 'Data de rescisão',
    TIMESTAMPDIFF(YEAR, '2011/08/25', '2017/08/25') AS 'Anos trabalhados'
FROM job_history AS jh
    INNER JOIN employees AS e ON jh.employee_id = e.employee_id
ORDER BY `Nome completo` ASC,
    `Anos trabalhados` ASC;
