SELECT
	CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo funcionário 1',
	emp.SALARY AS 'Salário funcionário 1',
    emp.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo funcionário 2',
    em.SALARY AS 'Salário funcionário 2', em.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees as emp
RIGHT JOIN hr.employees AS em ON em.JOB_ID = emp.JOB_ID
WHERE CONCAT(em.first_name, ' ', em.last_name) <> CONCAT(emp.first_name, ' ', emp.last_name)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
