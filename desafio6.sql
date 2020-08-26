SELECT 
    CONCAT(emp.first_name, ' ', emp.last_name) AS `Nome completo`,
    jobs.job_title AS `Cargo`,
    history.start_date AS 'Data de início do cargo',
    departments.department_name AS 'Departamento'
FROM
    hr.job_history AS history
        INNER JOIN
    hr.jobs AS jobs ON history.job_id = jobs.job_id
        INNER JOIN
    hr.employees AS emp ON emp.employee_id = history.employee_id
        INNER JOIN
    hr.departments AS departments ON history.department_id = departments.department_id
ORDER BY `Nome completo` DESC , `Cargo`;
