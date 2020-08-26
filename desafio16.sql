DELIMITER $$
USE hr$$
CREATE DEFINER=CURRENT_USER FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee varchar(25)) RETURNS int
    READS SQL DATA
BEGIN
DECLARE total_emails INTEGER;
SELECT 
count(e.LAST_NAME) INTO total_empregos
FROM hr.employees e 
INNER JOIN job_history jh 
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID 
WHERE e.EMAIL = email_employee;
RETURN total_empregos;
END$$
