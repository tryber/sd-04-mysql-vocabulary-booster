-- DESAFIO 6

SELECT CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
J.job_title AS Cargo,
JH.start_date AS 'Data de início do cargo',
D.department_name AS Departamento
FROM hr.employees as E
INNER JOIN hr.job_history AS JH
ON E.employee_id = JH.employee_id
INNER JOIN hr.jobs AS J
ON JH.job_id = J.job_id
INNER JOIN hr.departments AS D
ON JH.department_id = D.department_id
ORDER BY CONCAT(E.first_name, ' ', E.last_name) DESC, J.job_title ASC;
