USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(HIRE_DATE)
FROM hr.employees
WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mes
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
