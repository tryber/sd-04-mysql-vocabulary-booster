SELECT CONCAT(e.first_name, ' ', e.last_name) as 'Nome completo',
    j.job_title as 'Cargo',
    DATE(e.hire_date) as 'Data de início do cargo',
    d.department_name as 'Departamento'
FROM employees AS e
    INNER JOIN jobs AS j ON e.job_id = j.job_id
    INNER JOIN job_history AS jh ON e.employee_id = jh.employee_id
    INNER JOIN departments AS d on e.department_id = d.department_id
ORDER BY `Nome completo` DESC,
    `Cargo` ASC;