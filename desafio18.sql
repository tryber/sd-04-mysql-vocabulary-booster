DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) FROM hr.employees
  WHERE MONTH(hire_date) = 6 AND YEAR(hire_date) = 1987
  RETURN total;
END $$

DELIMITER ;
