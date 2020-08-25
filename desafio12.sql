SELECT 
    CONCAT(employee1.first_name, ' ', employee1.last_name)
    AS `Nome completo funcionário 1`,
    employee1.salary AS 'Salário funcionário 1',
    employee1.phone_number AS 'Telefone funcionário 1',
    CONCAT(employee2.first_name, ' ', employee2.last_name)
    AS `Nome completo funcionário 2`,
    employee2.salary AS 'Salário funcionário 2',
    employee2.phone_number AS 'Telefone funcionário 2'
FROM
    hr.employees AS employee1,
    hr.employees AS employee2
WHERE
  employee1.JOB_ID = employee2.JOB_ID
    AND CONCAT(employee1.first_name, ' ', employee1.last_name) <>
    CONCAT(employee2.first_name, ' ', employee2.last_name)
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
