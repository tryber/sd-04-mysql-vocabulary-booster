DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN email VARCHAR(150)) 
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) as 'Nome completo',
    j.job_title AS 'Cargo',
    d.department_name AS 'Departamento'
FROM employees AS e
    INNER JOIN job_history AS jh ON e.employee_id = jh.employee_id
    INNER JOIN jobs AS j ON jh.job_id = j.job_id
    INNER JOIN departments AS d ON jh.department_id = d.department_id
WHERE e.email = email
ORDER BY d.department_name ASC,
    j.job_title ASC;

END $$

DELIMITER;
-- Execute PROCEDURE
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');