USE hr;
DELIMITER $$
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(yr INT, mth INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(EMPLOYEE_ID) INTO total
FROM hr.employees
WHERE (YEAR(HIRE_DATE) = yr) AND (MONTH(HIRE_DATE) = mth);
RETURN total;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(1987, 6);
