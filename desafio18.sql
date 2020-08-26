USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_ INT, year_ INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE hiredQuantity INT;
  SELECT COUNT(*) FROM hr.employees
  WHERE MONTH(HIRE_DATE) = month_ AND YEAR(HIRE_DATE) = year_ INTO hiredQuantity;
  RETURN hiredQuantity;
END $$ DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(06, 1987);
