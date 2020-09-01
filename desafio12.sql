SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo funcionário 1',
    e.salary AS 'Salário funcionário 1',
    e.phone_number AS 'Telefone funcionário 1',
    CONCAT(oe.first_name, ' ', oe.last_name) AS 'Nome completo funcionário 2',
    oe.salary AS 'Salário funcionário 2',
    oe.phone_number AS 'Telefone funcionário 2'
FROM employees AS e,
    employees AS oe
WHERE e.job_id = oe.job_id
    and e.employee_id <> oe.employee_id
ORDER BY `Nome completo funcionário 1` ASC,
    `Nome completo funcionário 2` ASC;
