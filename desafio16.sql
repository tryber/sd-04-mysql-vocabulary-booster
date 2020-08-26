USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emp_email varchar(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE emp_id INT;
DECLARE emp_qnt INT;
SELECT EMPLOYEE_ID FROM hr.employees
WHERE EMAIL = emp_email INTO emp_id;
SELECT COUNT(*) FROM hr.job_history
WHERE EMPLOYEE_ID = emp_id INTO emp_qnt;
RETURN emp_qnt;
END $$
DELIMITER ;
