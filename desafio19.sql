-- DESAFIO 19

USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email_func VARCHAR(300))
BEGIN
SELECT CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
D.department_name AS `Departamento`,
J.job_title AS `Cargo`
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.employee_id = E.employee_id
INNER JOIN hr.departments AS D
ON JH.department_id = D.department_id
INNER JOIN hr.jobs AS J
ON JH.job_id = J.job_id
WHERE E.email = 'NKOCHHAR'
ORDER BY `Cargo`;
END $$

DELIMITER ;

-- DROP PROCEDURE exibir_historico_completo_por_funcionario;
-- CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
