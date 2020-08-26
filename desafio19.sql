USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
D.DEPARTMENT_NAME AS 'Departamento',
J.JOB_TITLE AS 'Cargo'
FROM hr.employees AS E
INNER JOIN hr.job_history AS H
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN hr.jobs AS J
ON H.JOB_ID = J.JOB_ID
WHERE email = E.EMAIL
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
