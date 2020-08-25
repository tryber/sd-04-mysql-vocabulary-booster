-- DESAFIO 6

SELECT CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
J.job_title AS Cargo,
E.hire_date AS 'Data de início do cargo',
D.department_name AS Departamento
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
INNER JOIN hr.departments AS D
ON E.department_id = D.department_id
ORDER BY CONCAT(E.first_name, ' ', E.last_name) DESC, Departamento ASC;
