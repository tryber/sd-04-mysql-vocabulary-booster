SELECT UPPER(CONCAT(e.first_name, ' ', e.last_name)) as 'Nome completo',
    jh.start_date as 'Data de início',
    e.salary as 'Salário'
FROM employees e
    INNER JOIN job_history jh ON e.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) IN (1, 2, 3)
ORDER BY `Nome completo` ASC,
    `Data de início` ASC;
