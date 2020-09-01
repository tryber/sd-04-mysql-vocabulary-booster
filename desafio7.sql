SELECT UPPER(CONCAT(e.first_name, ' ', e.last_name)) as 'Nome completo',
    jh.start_date as 'Data de início',
    e.salary as 'Salário'
FROM employees e
    INNER JOIN job_history jh ON e.employee_id = jh.employee_id
ORDER BY `Nome completo` ASC,
    `Data de início` ASC;
