--  select * from hr.employees;
--  select * from hr.job_history;
SELECT
  UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
  h.START_DATE AS `Data de início`,
  employees.SALARY AS `Salário`
FROM hr.employees AS employees
  JOIN hr.job_history AS h
    ON employees.EMPLOYEE_ID = h.EMPLOYEE_ID AND MONTH(h.START_DATE) BETWEEN 1 AND 3
-- Poderia ter sido feito da seguinte forma, porém o uso do WHERE não é realmente necessário:
-- JOIN hr.job_history AS h on employees.EMPLOYEE_ID = h.EMPLOYEE_ID
--   WHERE MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
