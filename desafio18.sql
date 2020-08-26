USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(emp_month INT, emp_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE emp_qnt INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(HIRE_DATE) = emp_month AND YEAR(HIRE_DATE) = emp_year
INTO emp_qnt;
RETURN emp_qnt;
END $$
DELIMITER ;
