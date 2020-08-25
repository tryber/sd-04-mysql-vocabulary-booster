USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(nome_funcionario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_empregos INT;
SELECT COUNT(*) FROM hr.job_history
GROUP BY EMPLOYEE_ID
HAVING EMPLOYEE_ID IN (
SELECT EMPLOYEE_ID from hr.employees
WHERE hr.employees.email =  nome_funcionario) INTO qnt_empregos;
RETURN qnt_empregos;
END $$

DELIMITER ;
