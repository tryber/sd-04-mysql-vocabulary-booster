-- DESAFIO 17
-- Consulta ao DATEDIFF na W3Schools - https://www.w3schools.com/sql/func_sqlserver_datediff.asp
SELECT CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
DATE_FORMAT(JH.start_date, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(JH.end_date, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(JH.end_date, JH.start_date)/365, 2) AS `Anos trabalhados` -- DateDiff retorna em dias, % 365
FROM hr.employees AS E
INNER JOIN hr.job_history as JH
ON E.employee_id = JH.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
